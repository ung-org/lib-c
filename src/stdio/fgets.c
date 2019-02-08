#include <stdio.h>
#include "nonstd/io.h"

/** read a string of characters from a file stream **/
char * fgets(char * restrict s, int n, FILE * restrict stream)
{
	flockfile(stream);

	int i = 0;
	if (feof(stream)) {
		return NULL;
	}

	while (i < n-1) {
		s[i] = fgetc(stream);
		if (s[i] == '\n') {
			s[i+1] = '\0';
			i = n;
		} else if (s[i] == EOF && feof(stream)) {
			s[i] = '\0';
			i = n;
		}
		i++;
	}

	funlockfile(stream);
	/*
	RETURN_SUCCESS(ARGUMENT(s));
	RETURN_FAILURE(CONSTANT(NULL));
	*/
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
