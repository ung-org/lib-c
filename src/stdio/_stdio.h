#ifndef ___STDIO_H__
#define ___STDIO_H__

#include <inttypes.h>
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

#define ORIENT_WIDE (1)
#define ORIENT_BYTE (-1)

#define OP_NONE   (0)
#define OP_INPUT  (1)
#define OP_OUTPUT (2)

#ifdef NDEBUG
#define ASSERT_STREAM(__stream, __orientation, __operation)
#else
#define ASSERT_STREAM(__stream, __orientation, __operation) do { \
		ASSERT_NONNULL(__stream); \
		if ((__stream)->fd == -1) { \
			UNDEFINED("In call to %s: Stream is not open (use after close?)", __func__); \
		} \
		if (((__operation) == OP_INPUT) && !(__stream)->read) { \
			UNDEFINED("In call to %s: Attempted input operation on output stream", __func__); \
		} \
		if (((__operation) == OP_OUTPUT) && !(__stream)->write) { \
			UNDEFINED("In call to %s: Attempted output operation on input stream", __func__); \
		} \
		if ((__orientation) && (__stream)->orientation && ((__orientation) != (__stream)->orientation)) { \
			UNDEFINED("In call to %s(): Requested %s operation on %s oriented stream", __func__, (__orientation) > 0 ? "wide" : "byte", ((__stream)->orientation) > 0 ? "wide" : "byte"); \
		} \
	} while (0)

#define ASSERT_FPOS(__stream, __pos) do { \
	if (!(__pos->__impl >= __stream->fpos && __pos->__impl <= __stream->fpos + __stream->nfpos)) { \
		UNDEFINED("In call to %s(): %s must be previously set by calling fesetpos()", __func__, #__pos); \
	} \
} while (0)

#endif

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

	int nlocks;		/* in multithreaded, used by flockfile() */
	int thread;		/* the owning thread if locked */

	int orientation:2;	/* 0 = undetermind, < 0 = byte, > 0 = wide */
	unsigned int operation:2;	/* TODO: previous operation, NONE, INPUT, OUTPUT (are there others?) */
	unsigned int eof:1;		/* eof indicator */
	unsigned int err:1;		/* error indicator */
	unsigned int text:1;		/* is this a text file? */
	unsigned int read:1;		/* open for reading? */
	unsigned int write:1;		/* open for writing? */

	#ifdef _POSIX_C_SOURCE
	pid_t pipe_pid;		/* if stream is a pipe, the child pid */
	#endif

	struct __fpos_t *fpos;
	size_t nfpos;
	long int *valid_ftell;
	size_t nvalid_ftell;
};

struct __fpos_t {
	size_t pos;
};

extern struct __stdio_h {
	struct __FILE FILES[FOPEN_MAX];
	char **formatted_pointers;
	size_t nformatted_pointers;
} __stdio_h;

/*
STDC(-1)
*/

#endif
