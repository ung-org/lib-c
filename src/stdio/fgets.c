#include <stdio.h>
#include "_stdio.h"

/** read a string of characters from a file stream **/
char * fgets(char * restrict s, int n, FILE * restrict stream)
{
	int i = 0;
	if (feof(stream)) {
		return NULL;
	}

	flockfile(stream);
	for (i = 0; i < n-1; i++) {
		s[i] = fgetc(stream);
		if (s[i] == '\n') {
			s[i+1] = '\0';
			break;
		} else if (s[i] == EOF) {
			s[i] = '\0';
			break;
		}
	}
	funlockfile(stream);

	/*
	RETURN_SUCCESS(ARGUMENT(s));
	RETURN_FAILURE(CONSTANT(NULL));
	*/
	if (s[0] == '\0') {
		return NULL;
	}

	return s;
}

/***
reads a string of characters from ARGUMENT(stream). Up to
ARGUMENT(n)-1 characters will be read into the array at ARGUMENT(s).

If a newline is read, it will be appended to ARGUMENT(s) and THIS() will return.

If end-of-file is reached, THIS() will return.

A CHAR(\0) will be written immediately after the final character is read.

If end-of-file is reached before any characters are read, the contents of
ARGUMENT(s) will be unchanged.

If an error occurs, the contents of ARGUMENT(s) are indeterminite.
***/

/*
STDC(1)
*/
