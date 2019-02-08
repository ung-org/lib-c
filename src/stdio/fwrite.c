#include <stdio.h>

/** write directly to a file stream **/
size_t fwrite(const void * restrict ptr, size_t size, size_t nmemb, FILE * restrict stream)
{
	unsigned char *buf = (unsigned char *)ptr;
	size_t n = 0;
	while (nmemb) {
		size_t i;
		for (i = 0; i < size; i++) {
			int c = fputc(buf[i], stream);
			if (c == EOF) {
				/* an error */
			} else {
				n++;
			}
		}
		nmemb--;
		buf += size;
	}
	/*
	RETURN_SUCCESS(the number of elements written);
	*/
	return n;
}

/***
writes ARGUMENT(nmemb) elements of ARGUMENT(size) bytes each from
the array ARGUMENT(ptr) to ARGUMENT(stream).

The file position inidicate is advanced by the number of bytes successfully
written.
***/
/*
STDC(1)
*/
