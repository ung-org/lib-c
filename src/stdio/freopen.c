#ifndef _POSIX_SOURCE
#define _POSIX_SOURCE
#define POSIX_FORCED
#endif

#include <errno.h>
#include <stdio.h>
#include <string.h>
#include "_stdio.h"

#ifdef POSIX_FORCED
#include "_syscall.h"
#define open(_p, _f, _m)	__scall3(open, _p, _f, _m)
#define isatty(_fd)		(-1) /*ioctl(_fd, TCFLSH, 0) */
#define TCFLSH	0x540B
#define O_RDONLY 00
#define O_WRONLY 01
#define O_CREAT 0100
#define O_TRUNC 01000
#define O_APPEND 02000
#define O_RDWR 02
#endif

/** reopen a file stream with a new file **/

GCC_SSE_HACK
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

	SIGNAL_SAFE(0);
	if (filename) {
		ASSERT_NOOVERLAP(filename, strlen(filename), mode, strlen(mode));
		ASSERT_NOOVERLAP(filename, strlen(filename), stream, sizeof(*stream));
	}
	ASSERT_NOOVERLAP(mode, strlen(mode), stream, sizeof(*stream));

	for (i = 0; i < sizeof(modemap) / sizeof(modemap[0]); i++) {
		if (!strcmp(modemap[i].smode, mode)) {
			openmode = modemap[i].omode;
			break;
		}
	}

	if (openmode == -1) {
		UNDEFINED("\"%s\" is not a valid mode for fopen() or freopen()", mode);
		#ifdef EINVAL
		errno = EINVAL;
		#endif
		return NULL;
	}

	flockfile(stream);
	if (stream->write) {
		fflush(stream);
	}

	if (filename != NULL) {
		fd = open(filename, openmode, 0755); /* TODO: umask */
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

	free(stream->valid_fpos);
	stream->nvalid_fpos = 0;

	free(stream->valid_ftell);
	stream->nvalid_ftell = 0;

	stream->text = !(strchr(mode, 'b'));
	stream->read = ((openmode & O_RDONLY) == O_RDONLY) || ((openmode & O_RDWR) == O_RDWR);
	stream->write = ((openmode & O_WRONLY) == O_WRONLY) || ((openmode & O_RDWR) == O_RDWR);

	/*
	RETURN_SUCCESS(ARGUMENT(stream));
	RETURN_FAILURE(CONSTANT(NULL));
	*/

	return stream;
}

CHECK_3(FILE *, NULL, freopen, const char * restrict, const char * restrict, FILE * restrict)

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
