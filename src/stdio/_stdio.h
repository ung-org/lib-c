#ifndef ___STDIO_H__
#define ___STDIO_H__

#include <stddef.h>
#include <stdarg.h>
#include <stdio.h>

#ifdef _POSIX_C_SOURCE
#include <sys/types.h>
#else
#include "sys/types/pid_t.c"
#endif

#ifndef L_ctermid
#include "L_ctermid.c"
#endif

struct __FILE {
	fpos_t pos;
	char *buf;
	char ibuf[BUFSIZ];
	enum { INTERNAL, SUPPLIED, ALLOCED, UNSET } buftype;
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
	wchar_t *wstring;
	struct __FILE *stream;
	size_t maxlen;
	int fd;
	int flags;
};

int __printf(struct io_options * restrict, const char * restrict, va_list);
int __scanf(struct io_options * restrict, const char * restrict, va_list);

struct __stdio {
	struct __FILE FILES[FOPEN_MAX];
	char ctermid[L_ctermid + 1];
};

extern struct __stdio __stdio;

#if !defined _POSIX_C_SOURCE || _POSIX_C_SOURCE < 199506L
#define flockfile(_file)		(void)(_file)
#define funlockfile(_file)		(void)(_file)
#define putc_unlocked(_c, _stream)	fputc(_c, _stream)
#define getc_unlocked(_stream)		fgetc(_stream)
#endif

#endif
