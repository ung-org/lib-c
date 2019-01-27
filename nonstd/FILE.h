#ifndef __NONSTD_FILE_H__
#define __NONSTD_FILE_H__

#include "stdio.h"		/* for fpos_t */
#include "sys/types.h"		/* for pid_t */

#if !defined _POSIX_C_SOURCE || _POSIX_C_SOURCE < 199309L
# define flockfile(x)
# define ftrylockfile(x)
# define funlockfile(x)
#endif

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

int getc_unlocked(FILE *);
int putc_unlocked(FILE *, int);

#endif
