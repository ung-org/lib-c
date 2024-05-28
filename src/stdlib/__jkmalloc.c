#include <errno.h>
#include <limits.h>
#include <stdlib.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#ifdef _XOPEN_SOURCE
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#else
#include "_forced/sigaction.h"
#include "_forced/mmap.h"
#include "_forced/munmap.h"
#include "_forced/mprotect.h"

#define sysconf(__n) 4096
#define psiginfo(x, y)	fprintf(stderr, "%s (%p)\n", (char*)(y), (void*)(x))
#define sigemptyset(x) memset(x, 0, sizeof(*x))
#endif

#include "_jkmalloc.h"

#if defined __OpenBSD__ || defined __FreeBSD__ || defined __APPLE__
#define psiginfo(x, y)	((y) ? fprintf(stderr, "%s\n", (char*)(y)) : 0)
#ifndef SA_SIGINFO
#define SA_SIGINFO	(0)
#endif
#endif

#define PTR_BITS	(CHAR_BIT * sizeof(uintptr_t))

#define JKMALLOC_EXIT_VALUE	(127 + SIGSEGV)
#define JK_FREE_LIST_SIZE	(8)

/* magic numbers derived from CRC-32 of jk_foo_block */
#define JK_FREE_MAGIC		(0x551a51dc)
#define JK_UNDER_MAGIC		(0xcb2873ac)
#define JK_OVER_MAGIC		(0x18a12c17)
#define JK_RONLY_MAGIC		(0xdeadb00d)

#define jk_pages(bytes)		(((bytes + __jk_pagesize - 1) / __jk_pagesize) + 2)
#define jk_pageof(addr)		((void*)((uintptr_t)addr - ((uintptr_t)addr % __jk_pagesize)))
#define jk_bucketof(addr)	((void*)((uintptr_t)jk_pageof(addr) - __jk_pagesize))

struct jk_bucket {
	uint32_t magic;
	uintptr_t start;
	size_t size;
	size_t align;
	size_t pages;
	size_t tlen;
	char trace[];
};

struct jk_source {
	const char *file;
	const char *func;
	uintmax_t line;
	struct jk_bucket *bucket;
};

static struct jk_bucket *__jk_free_list[JK_FREE_LIST_SIZE];
static size_t __jk_free_buckets = 0;
static size_t __jk_pagesize = 0;

static void __jk_error(const char *s, void *addr, struct jk_source *src)
{
	if (s && *s) {
		fputs(s, stderr);
		if (addr != NULL) {
			fprintf(stderr, "%p", addr);
		}
		fputs("\n", stderr);
	}

	if (src && src->bucket && src->bucket->trace[0] != '\0') {
		fwrite(src->bucket->trace, src->bucket->tlen, 1, stderr);
		fputs("\n", stderr);
	}

	if (src && src->file) {
		fprintf(stderr, "!!! %s() (%s:%ju)\n", src->func, src->file, src->line);
	}

	_Exit(JKMALLOC_EXIT_VALUE);
}

static void *__jk_page_alloc(size_t npages)
{
	int fd = -1;
	int prot = PROT_READ | PROT_WRITE;
	int flags = MAP_PRIVATE;

	#ifdef MAP_ANONYMOUS
	flags |= MAP_ANONYMOUS;
	#else
	fd = open("/dev/zero", O_RDONLY, 0666);
	#endif

	void *pages = mmap(NULL, npages * __jk_pagesize, prot, flags, fd, 0);

	#ifndef MAP_ANONYMOUS
	if (fd != -1) {
		close(fd);
	}
	#endif

	return pages;
}

static void __jk_sigaction(int sig, siginfo_t *si, void *addr)
{
	___signal.current = 0;
	(void)sig; (void)addr;
	if (si->si_addr == NULL) {
		psiginfo(si, "NULL pointer dereference");
		__jk_error(NULL, NULL, NULL);
	}

	struct jk_bucket *bucket = jk_pageof(si->si_addr);
	if (mprotect(bucket, __jk_pagesize, PROT_READ) != 0) {
		psiginfo(si, NULL);
		__jk_error(NULL, NULL, NULL);
	}

	switch (bucket->magic) {
	case JK_UNDER_MAGIC:
		if (bucket->size == 0) {
			psiginfo(si, "Attempt to use 0-byte allocation");
		} else {
			psiginfo(si, "Heap underflow detected");
		}
		break;

	case JK_OVER_MAGIC:
		if (bucket->size == 0) {
			psiginfo(si, "Attempt to use 0-byte allocation");
		} else {
			psiginfo(si, "Heap overflow detected");
			fprintf(stderr, "Allocation of size %zu at %p, overflow at %p (offset %zu)\n", bucket->size, (void*)bucket->start, si->si_addr, (size_t)((char*)si->si_addr - (char*)bucket->start));
			fprintf(stderr, "Buffer begins with %4s\n", (char*)bucket->start);
		}
		break;

	case JK_FREE_MAGIC:
		psiginfo(si, "Use after free() detected");
		break;

	default:
		psiginfo(si, NULL);
	}

	struct jk_source src = { .bucket = bucket };
	__jk_error(NULL, NULL, &src);
}

/*
static void jk_sigsegv(int sig)
{
	___signal.current = 0;
	fprintf(stderr, "JK SIGSEGV!\n");
	__jk_sigaction(sig, NULL, NULL);
}
*/

void* __jkmalloc(const char *file, const char *func, uintmax_t line, void *ptr, size_t alignment, size_t size1, size_t size2, const char *user)
{
	static int sa_set = 0;
	if (!sa_set) {
		struct sigaction sa = {
			.sa_flags = SA_SIGINFO,
			.sa_sigaction = __jk_sigaction,
		};
		//sigemptyset(&sa.sa_mask);
		sigaction(SIGSEGV, &sa, NULL);
		//signal(SIGSEGV, jk_sigsegv);
		sa_set = 1;
	}

	if (__jk_pagesize == 0) {
		__jk_pagesize = sysconf(_SC_PAGESIZE);
	}

	struct jk_source src = {
		.file = file,
		.func = func,
		.line = line,
	};

	/* free() */
	if (alignment == 0) {
		if (ptr == NULL) {
			return NULL;
		}

		/* TODO: Add source line information to the following errors */

		struct jk_bucket *b = jk_bucketof(ptr);
		if (mprotect(b, __jk_pagesize, PROT_READ | PROT_WRITE) != 0) {
			__jk_error("Attempt to free() non-dynamic address", ptr, &src);
		}

		src.bucket = b;

		if (b->magic == JK_FREE_MAGIC) {
			__jk_error("Double free() detected", ptr, &src);
		}

		if (b->magic != JK_UNDER_MAGIC) {
			__jk_error("Attempt to free() non-dynamic address", ptr, &src);
		}

		if (b->start != (uintptr_t)ptr) {
			__jk_error("Attempt to free() incorrect address", ptr, &src);
		}

		char *base = (char*)b;
		mprotect(base, __jk_pagesize * b->pages, PROT_READ | PROT_WRITE);

		if (file) {
			size_t len = b->tlen;
			b->tlen += snprintf(b->trace + len, __jk_pagesize - sizeof(*b) - len,
				"%s--- %s() (%s:%ju)", len ? "\n" : "", func, file, line);
		}

		b->magic = JK_FREE_MAGIC;

		for (size_t i = 1; i < b->pages; i++) {
			memmove(base + i * __jk_pagesize, b, __jk_pagesize);
		}

		size_t fb = __jk_free_buckets % JK_FREE_LIST_SIZE;
		if (__jk_free_buckets > JK_FREE_LIST_SIZE) {
			mprotect(__jk_free_list[fb], __jk_pagesize, PROT_READ);
			munmap(__jk_free_list[fb], __jk_pagesize * __jk_free_list[fb]->pages);
		}
		__jk_free_list[fb] = b;
		__jk_free_buckets++;
		mprotect(b, __jk_pagesize * b->pages, PROT_NONE);
		return NULL;
	}

	/* realloc() */
	if (ptr) {

		/* TODO: Add source line information to the following errors */

		struct jk_bucket *b = jk_bucketof(ptr);
		if (mprotect(b, __jk_pagesize, PROT_READ | PROT_WRITE) != 0) {
			__jk_error("Attempt to realloc() non-dynamic address", ptr, &src);
		}

		src.bucket = b;

		if (b->magic == JK_FREE_MAGIC) {
			__jk_error("Attempt to realloc() after free()", ptr, &src);
		}

		if (b->magic != JK_UNDER_MAGIC) {
			__jk_error("Attempt to realloc() non-dynamic address", ptr, &src);
		}

		if (b->start != (uintptr_t)ptr) {
			__jk_error("Attempt to reallocate() incorrect address", ptr, &src);
		}
	
		void *newptr = __jkmalloc(NULL, NULL, 0, NULL, alignment, size1, size2, user);
		if (newptr != NULL) {
			memmove(newptr, ptr, b->size);
			free(ptr);
		}
		return newptr;
	}

	size_t size = size1;

	/* calloc() */
	if (size2) {
		size = size1 * size2;
		if (size < size1 || size < size2) {
			/* overflow */
			errno = ENOMEM;
			return NULL;
		}
	}

	size_t pages = jk_pages(size);

	struct jk_bucket *under = __jk_page_alloc(pages);
	if (under == MAP_FAILED) {
		errno = ENOMEM;
		return NULL;
	}

	under->magic = JK_UNDER_MAGIC;
	under->size = size;
	under->align = alignment;
	under->pages = pages;
	under->start = (uintptr_t)under + __jk_pagesize;
	if (size % __jk_pagesize != 0) {
		under->start += __jk_pagesize - size % __jk_pagesize;
		if (under->start % under->align != 0) {
			under->start -= under->start % under->align;
		}
	}

	struct jk_bucket *over = (void*)((char*)under + __jk_pagesize * (pages - 1));
	over->magic = JK_OVER_MAGIC;
	over->start = under->start;
	over->size = under->size;

	ptr = (void*)under->start;

	if (file) {
		under->tlen = snprintf(under->trace, __jk_pagesize - sizeof(*under), "+++ %s() (%s:%ju)", func, file, line);
		memcpy(over->trace, under->trace, under->tlen + 1);
		over->tlen = under->tlen;
	} else if (user) {
		under->tlen = snprintf(under->trace, __jk_pagesize - sizeof(*under), "Read-only memory for %s", user);
		memcpy(over->trace, under->trace, under->tlen + 1);
		over->tlen = under->tlen;
	} else {
		under->trace[0] = '\0';
		over->trace[0] = '\0';
	}

	/* calloc() */
	if (size2) {
		char *p = ptr;
		for (size_t i = 0; i < size; i++) {
			p[i] = '\0';
		}
	}

	mprotect(under, __jk_pagesize, PROT_NONE);
	mprotect(over, __jk_pagesize, PROT_NONE);
	return ptr;
}

/*
int (jk_memalign)(void **ptr, size_t a, size_t n)
{
	if (ptr == NULL) {
		return EINVAL;
	}

	if (((*ptr) = __jkmalloc(NULL, NULL, 0, NULL, a, n, 0, NULL)) == NULL) {
		return errno;
	}

	return 0;
}
*/
