#if 0
#define _DEFAULT_SOURCE "give me anonymous, gnu"
#define _XOPEN_SOURCE 700
#include <errno.h>
#include <fcntl.h>
#include <limits.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>

#include "jkmalloc.h"

#if defined __OpenBSD__ || defined __FreeBSD__ || defined __APPLE__
#define psiginfo(x, y)	((y) ? fprintf(stderr, "%s\n", (char*)(y)) : 0)
#ifndef SA_SIGINFO
#define SA_SIGINFO	(0)
#endif
#endif

#include <stdio.h>
#include <stdlib.h>

#define psiginfo(x, y)	((y) ? fprintf(stderr, "%s\n", (char*)(y)) : 0)

#define PTR_BITS	(CHAR_BIT * sizeof(uintptr_t))

#define JKMALLOC_EXIT_VALUE	(127 + SIGSEGV)
#define JK_FREE_LIST_SIZE	(8)

/* magic numbers derived from CRC-32 of jk_foo_block */
#define JK_FREE_MAGIC		(0x551a51dc)
#define JK_UNDER_MAGIC		(0xcb2873ac)
#define JK_OVER_MAGIC		(0x18a12c17)

#define jk_pages(bytes)		(((bytes + jk_pagesize - 1) / jk_pagesize) + 2)
#define jk_pageof(addr)		((void*)((uintptr_t)addr - ((uintptr_t)addr % jk_pagesize)))
#define jk_bucketof(addr)	((void*)((uintptr_t)jk_pageof(addr) - jk_pagesize))

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

static struct jk_bucket *jk_free_list[JK_FREE_LIST_SIZE];
static size_t jk_free_buckets = 0;
static size_t jk_pagesize = 0;

static void jk_error(const char *s, void *addr, struct jk_source *src)
{
	if (s && *s) {
		write(STDERR_FILENO, s, strlen(s));
		if (addr != NULL) {
			char hex[] = "01234567890abcdef";
			char ha[sizeof(uintptr_t) * 2 + 5] = ": 0x";
			uintptr_t a = (uintptr_t)addr;
			/* FIXME */
			for (size_t i = 0; i < sizeof(uintptr_t); i++) {
				ha[4 + 2 * i] = hex[(a >> (PTR_BITS - i)) & 0xf];
				ha[4 + 2 * i + 1] = hex[(a >> (PTR_BITS - i + 1)) & 0xf];
			}
			write(STDERR_FILENO, ha, sizeof(ha));
		}
		write(STDERR_FILENO, "\n", 1);
	}

	if (src && src->bucket && src->bucket->trace[0] != '\0') {
		write(STDERR_FILENO, src->bucket->trace, src->bucket->tlen);
		write(STDERR_FILENO, "\n", 1);
	}

	if (src && src->file) {
		fprintf(stderr, "!!! %s() (%s:%ju)\n", src->func, src->file, src->line);
	}

	_Exit(JKMALLOC_EXIT_VALUE);
}

static void jk_sigaction(int sig, siginfo_t *si, void *addr)
{
	(void)sig; (void)addr;
	if (si->si_addr == NULL) {
		psiginfo(si, "NULL pointer dereference");
		jk_error(NULL, NULL, NULL);
	}

	struct jk_bucket *bucket = jk_pageof(si->si_addr);
	if (mprotect(bucket, jk_pagesize, PROT_READ) != 0) {
		psiginfo(si, NULL);
		jk_error(NULL, NULL, NULL);
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
	jk_error(NULL, NULL, &src);
}

/*
STDC(0)
SIGNAL_SAFE(0)
*/
#endif
