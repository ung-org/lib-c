#ifndef ___STDIO_H__
#define ___STDIO_H__

#include <stddef.h>
#include <stdarg.h>
#include <stdio.h>

#include "_safety.h"

#ifdef _POSIX_C_SOURCE
#include <sys/types.h>
#endif

#if !defined _POSIX_C_SOURCE || _POSIX_C_SOURCE < 199506L
#define flockfile(_file)		(void)(_file)
#define funlockfile(_file)		(void)(_file)
#define putc_unlocked(_c, _stream)	fputc(_c, _stream)
#define getc_unlocked(_stream)		fgetc(_stream)
#endif

#define f_is_open(s) (s && (s->bmode != 0))

#define GCC_SSE_HACK __attribute__((noinline, target("no-sse")))

struct __FILE {
	fpos_t pos;

	char *buf;		/* pointer to in-use buffer */
	char ibuf[BUFSIZ];	/* statically allocated buffer */
	size_t bsize;		/* how big is the buffer */
	size_t bpos;		/* current position of next character */
	enum {
		UNUSED = 0,
		FULL = _IOFBF,
		LINE = _IOLBF,
		NONE = _IONBF,
	} bmode;		/* buffer mode or stream available */

	int fd;			/* the backing file descriptor */

	int orientation;	/* 0 = undetermind, < 0 = byte, > 0 = wide */

	int eof;		/* eof indicator */
	int err;		/* error indicator */

	int nlocks;		/* in multithreaded, used by flockfile() */
	int thread;		/* the owning thread if locked */

	#ifdef _POSIX_C_SOURCE
	pid_t pipe_pid;		/* if stream is a pipe, the child pid */
	#endif
};

struct io_options {
	const char *fnname;	/* the calling function */
	char *string;		/* NULL or the output string */
	wchar_t *wstring;	/* NULL or the output wide string */
	FILE *stream;		/* NULL or the output stream */
	int fd;			/* -1 or the output file descriptor */
	size_t maxlen;		/* max number of bytes to write to string */
	int ret;		/* return value */
};

int __printf(struct io_options * restrict, const char * restrict, va_list);
int __scanf(struct io_options * restrict, const char * restrict, va_list);

struct __stdio {
	struct __FILE FILES[FOPEN_MAX];
};

extern struct __stdio __stdio;

/*
STDC(-1)
*/

#endif
