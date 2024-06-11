#include <errno.h>
#include <limits.h>
#include <stdlib.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "_safety.h"

#ifdef _XOPEN_SOURCE
#else
#include "_forced/sigaction.h"
#include "_forced/mprotect.h"

#define sysconf(__n) 4096
#define psiginfo(x, y)	fprintf(stderr, "%s (%p)\n", (char*)(y), (void*)(x))
#define sigemptyset(x) memset(x, 0, sizeof(*x))
#endif

#include "stdlib/_jkmalloc.h"

static void __jk_undef(void)
{
	static int printed = 0;
	if (printed == 0) {
		printed = 1;
		fprintf(stderr, "Undefined Behavior: ");
	}
}

static void __jk_error(const char *s, void *addr, struct jk_source *src)
{
	__jk_undef();

	if (s && *s) {
		fputs(s, stderr);
		if (addr != NULL) {
			fprintf(stderr, " %p", addr);
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

static void __jk_sigaction(int sig, siginfo_t *si, void *addr)
{
	__signal_h.current = 0;

	(void)sig; (void)addr;

	__jk_undef();

	if (__dangerous[0].func) {
		fprintf(stderr, "In call to %s, attempting to read parameter %s (%p)\n", __dangerous[0].func, __dangerous[0].param, __dangerous[0].addr);
	}

	if (__dangerous[1].func) {
		fprintf(stderr, "In call to %s, attempting to write parameter %s (%p)\n", __dangerous[1].func, __dangerous[1].param, __dangerous[1].addr);
	}

	if (!si) {
		__jk_error("No signal information provided", NULL, NULL);
	}

	if (si->si_addr == NULL) {
		psiginfo(si, "NULL pointer dereference");
		__jk_error(NULL, NULL, NULL);
	}

	struct jk_bucket *bucket = jk_pageof(si->si_addr);
	if (mprotect(bucket, __jk_pagesize, PROT_READ) != 0) {
		psiginfo(si, NULL);
		__jk_error(NULL, NULL, NULL);
	}

	MAGIC_CHECK:
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

	case JK_RONLY_MAGIC:
		psiginfo(si, "Attempt to modify read-only memory detected");
		break;

	default:
		/* try to find the actual error */
		bucket = (void*)((char*)bucket - __jk_pagesize);
		if (mprotect(bucket, __jk_pagesize, PROT_READ) != 0) {
			psiginfo(si, NULL);
			__jk_error(NULL, NULL, NULL);
		}
		goto MAGIC_CHECK;
	}

	struct jk_source src = { .bucket = bucket };
	__jk_error(NULL, NULL, &src);
}

GCC_SSE_HACK
void __segv(void)
{
	static int sa_set = 0;
	if (!sa_set) {
		struct sigaction sa = {
			.sa_flags = SA_SIGINFO,
			.sa_sigaction = __jk_sigaction,
		};
		sigemptyset(&sa.sa_mask);
		sigaction(SIGSEGV, &sa, NULL);
		sa_set = 1;
	}
}

/*
SIGNAL_SAFE(0)
STDC(0)
*/
