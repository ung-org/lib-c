#include <stdio.h>
#include "_stdio.h"

/** read directly from a file stream **/

size_t fread(void * restrict ptr, size_t size, size_t nmemb, FILE * restrict stream)
{
	unsigned char *buf = ptr;
	size_t n = 0;

	SIGNAL_SAFE(0);
	ASSERT_NOOVERLAP(ptr, size * nmemb, stream, sizeof(*stream));

	flockfile(stream);
	while (nmemb) {
		size_t i;
		for (i = 0; i < size; i++) {
			int c = fgetc(stream);
			if (c == EOF) {
				/* an error */
			} else {
				buf[i] = (char)c;
			}
		}
		nmemb--;
		buf += size;
		n++;
	}
	funlockfile(stream);
	/*
	RETURN_SUCCESS(the number of elements read);
	*/
	return n;
}

/***
reads up to ARGUMENT(nmemb) elements of ARGUMENT(size) bytes each
from ARGUMENT(stream) into the array at ARGUMENT(ptr).

The file position indicate is advanced by the number of bytes read.
***/

/*
STDC(1)
*/
