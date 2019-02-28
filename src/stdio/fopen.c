#include <stdio.h>
#include "stdlib.h"
#include "nonstd/io.h"

/** open a file stream **/
FILE * fopen(const char * restrict filename, const char * restrict mode)
{
	FILE *f = calloc(1, sizeof(*f));
	f->fd = -1;
	if (freopen(filename, mode, f) == NULL) {
		free(f);
		return NULL;
	}

	if (__libc(FILE_STREAMS)) {
		f->prev = __libc(FILE_STREAMS);
		f->prev->next = f;
	}

	/* __libc(FILE_STREAMS) = f; */

	/*
	RETURN_SUCCESS(a pointer to the new file stream);
	RETURN_FAILURE(CONSTANT(NULL));
	*/
	return f;
}

/***
opens a file stream associated with the file ARGUMENT(filename).

The type of file and allowed operations are determined by ARGUMENT(mode):

FLAG(LITERAL(r), text file; read-only)
FLAG(LITERAL(w), text file; write-only; truncate to 0 bytes)
FLAG(LITERAL(a), text file; append)
FLAG(LITERAL(rb), binary file; read-only)
FLAG(LITERAL(wb), binary file; write-only; truncate to 0 bytes)
FLAG(LITERAL(ab), binary file; append)
FLAG(LITERAL(r+), text file; update (read and write))
FLAG(LITERAL(w+), text file; update (read and write); truncate to 0 bytes)
FLAG(LITERAL(a+), text file; update (read and write); append data to end of file)
FLAG(LITERAL(r+b), binary file; update (read and write))
FLAG(LITERAL(rb+), binary file; update (read and write))
FLAG(LITERAL(w+b), binary file; update (read and write); truncate to 0 bytes)
FLAG(LITERAL(wb+), binary file; update (read and write); truncate to 0 bytes)
FLAG(LITERAL(a+b), binary file; update (read and write); append data to end of file)
FLAG(LITERAL(ab+), binary file; update (read and write); append data to end of file)

File streams are opened in fully buffered mode if and only if
ARGUMENT(filename) is not an interactive device.

The error and end-of-file indicators are cleared.
***/

/*
STDC(1)
*/
