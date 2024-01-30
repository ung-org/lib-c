#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include "_stdio.h"
#undef fopen

/** open a file stream **/

FILE * fopen(const char * restrict filename, const char * restrict mode)
{
	FILE *f = NULL;
	size_t i;

	SIGNAL_SAFE(0);

	for (i = 0; i < FOPEN_MAX; i++) {
		if (__stdio.FILES[i].bmode == 0) {
			f = &(__stdio.FILES[i]);
			break;
		}
	}

	if (f == NULL) {
		#ifdef EMFILE
		errno = EMFILE;
		#endif

		return NULL;
	}

	/*
	RETURN_SUCCESS(a pointer to the new file stream);
	RETURN_FAILURE(CONSTANT(NULL));
	*/

	return freopen(filename, mode, f);
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
