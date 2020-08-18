#ifndef _POSIX_SOURCE
#define _POSIX_SOURCE
#define POSIX_FORCED
#endif

#include <sys/types.h>
#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include "_stdio.h"

#ifdef POSIX_FORCED
#include "termios/_termios.h"
#include "_syscall.h"
#define open(_p, _f, _m)	__scall3(open, _p, _f, _m)
#define isatty(_fd)		ioctl(_fd, TCFLSH, 0)
#endif

/** reopen a file stream with a new file **/

FILE * freopen(const char * restrict filename, const char * restrict mode, FILE * restrict stream)
{
	struct {
		char *smode;
		int omode;
	} modemap[] = {
		{ "r",		O_RDONLY },
		{ "rb",		O_RDONLY },

		{ "w",		O_WRONLY | O_CREAT | O_TRUNC },
		{ "wb",		O_WRONLY | O_CREAT | O_TRUNC },

		{ "a",		O_WRONLY | O_CREAT | O_APPEND },
		{ "ab",		O_WRONLY | O_CREAT | O_APPEND },

		{ "r+",		O_RDWR },
		{ "rb+",	O_RDWR },
		{ "r+b",	O_RDWR },

		{ "w+",		O_RDWR | O_CREAT | O_TRUNC },
		{ "wb+",	O_RDWR | O_CREAT | O_TRUNC },
		{ "w+b",	O_RDWR | O_CREAT | O_TRUNC },

		{ "a+",		O_RDWR | O_CREAT | O_APPEND },
		{ "ab+",	O_RDWR | O_CREAT | O_APPEND },
		{ "a+b",	O_RDWR | O_CREAT | O_APPEND },
	};
	int openmode = -1;
	size_t i;
	int fd = -1;

	for (i = 0; i < sizeof(modemap) / sizeof(modemap[0]); i++) {
		if (!strcmp(modemap[i].smode, mode)) {
			openmode = modemap[i].omode;
			break;
		}
	}

	if (openmode == -1) {
		#ifdef EINVAL
		errno = EINVAL;
		#endif
		return NULL;
	}

	flockfile(stream);
	fflush(stream);

	if (filename != NULL) {
		fd = open(filename, openmode, 0);
		if (fd < 0) {
			/* open() already sets errno */
			funlockfile(stream);
			return NULL;
		}
		stream->fd = fd;
	}

	if (stream->bmode == 0) {
		stream->bmode = isatty(fd) ? _IOLBF : _IOFBF;
		stream->bsize = BUFSIZ;
		stream->buf = stream->ibuf;
	}

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
