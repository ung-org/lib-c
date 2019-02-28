#include <stdio.h>
#include "stdlib.h"
#include "nonstd/io.h"

/** open a file stream **/
FILE * fopen(const char * restrict filename, const char * restrict mode)
{
	struct __FILE *base = __libc(FILE_STREAMS);
	struct __FILE *f = base;

	/* find the next available stream */
	while (f->next != NULL) {
		f = f->next;
	}

	/* use a stream from the guaranteed space if possible */
	/* otherwise, allocate a new stream */
	if (f < base + FOPEN_MAX) {
		f->next = f + 1;
	} else {
		f->next = malloc(sizeof(*f->next));
	}

	/* if we had to allocate, but that failed, we're out of memory */
	if (f->next == NULL) {
		return NULL;
	}

	/* open the new stream */
	f->next->prev = f;
	f = f->next;
	f->fd = -1;
	if (freopen(filename, mode, f) == NULL) {
		if (f < base + FOPEN_MAX) {
		} else {
			free(f);
		}
		return NULL;
	}

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
