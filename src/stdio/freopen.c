#include <stdio.h>
#include "errno.h"
#include "_stdio.h"

#if defined _POSIX_SOURCE || defined _POSIX_C_SOURCE || defined _XOPEN_SOURCE
#include "sys/types.h"
#include "fcntl.h"
#else
#define open(fname, flags, mode) (filename ? -1 : -1)
#endif

/** reopen a file stream with a new file **/
FILE * freopen(const char * restrict filename, const char * restrict mode, FILE * restrict stream)
{
	flockfile(stream);
	(void)mode;

	int openmode = 0; /* modetoflag(mode); */
	if (openmode == 0) {
		#ifdef EINVAL
		errno = EINVAL;
		#endif
		return NULL;
	}

	int fd = open(filename, openmode, 0);
	if (fd == -1) {
		/* set errno */
		return NULL;
	}

	stream->fd = fd;
	stream->nlocks = 0;

	/*
	RETURN_SUCCESS(ARGUMENT(stream));
	RETURN_FAILURE(CONSTANT(NULL));
	*/
	return stream;
}

/***
changes the file associated with ARGUMENT(stream) to
ARGUMENT(filename). The meaning of ARGUMENT(mode) is the same as with
FUNCTION(fopen).

Whatever file is currently associated with ARGUMENT(stream) is closed,
ignoring any errors.

The error and end-of-file indicators are cleared.
***/
/*
STDC(1)
*/
