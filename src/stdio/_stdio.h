#ifndef ___STDIO_H__
#define ___STDIO_H__

#include <stdarg.h>
#include <stdio.h>
#include "../sys/types/pid_t.c"
#include "nonstd/internal.h"

struct __FILE {
	fpos_t pos;
	char *buf;
	enum { SUPPLIED, ALLOCED, UNSET } buftype;
	int buffering;
	int bsize;
	int isopen;
	int flags;
	int lastop;

	/* verified necessary */
	int fd;
	int oflag;
	int orientation;
	int eof;
	int err;
	int nlocks;
	int thread;

	pid_t pipe_pid;

	struct {
		char *buf;
		size_t size;
		int allocated;
	} mem;
	
	struct __FILE *prev;
	struct __FILE *next;
};

struct io_options {
	const char *fnname;
	char *string;
	struct __FILE *stream;
	size_t maxlen;
	int fd;
	int flags;
};

int __printf(struct io_options * restrict, const char * restrict, va_list);
int __scanf(struct io_options * restrict, const char * restrict, va_list);

#ifndef _POSIX_C_SOURCE
#define flockfile(...)
#define funlockfile(...)
#endif

#endif
