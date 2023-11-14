#if 0

#include <stdio.h>
#include "_stdio.h"

#if !defined _POSIX_C_SOURCE || _POSIX_C_SOURCE < 199506L
#undef putc_unlocked
#define putc_unlocked fputc
#include "putc_unlocked.c"
#else

/** write a character to a file stream **/

int fputc(int c, FILE *stream)
{
	int ret = EOF;
	flockfile(stream);
	ret = putc_unlocked(c, stream);
	funlockfile(stream);
	return ret;
}

#endif

/***
writes the character ARGUMENT(c) (converted to an TYPE(unsigned char)) to
ARGUMENT(stream). The character is written at the current
file position indicator, which is advanced. If ARGUMENT(stream) does not support
seeking or was opened in append mode, the character is written to the end of
the stream.
***/

/*
RETURN_SUCCESS(ARGUMENT(c))
RETURN_FAILURE(CONSTANT(EOF))
STDC(1)
*/


#endif
