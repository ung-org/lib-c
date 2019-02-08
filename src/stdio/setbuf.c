#include <stdio.h>

/** specify file stream buffer **/
void setbuf(FILE * restrict stream, char * restrict buf)
{
	if (buf) {
		setvbuf(stream, buf, _IOFBF, BUFSIZ);
	} else {
		setvbuf(stream, NULL, _IONBF, 0);
	}
}

/***
sets the buffer for ARGUMENT(stream) to ARGUMENT(buf). The buffer must hold
at least CONSTANT(BUFSIZ) characters. It is the equivalent of:
	LITERAL(setvbuf(stream, buf, _IOFBF, BUFSIZ);)

If ARGUMENT(buf) is CONSTANT(NULL), ARGUMENT(stream) will become unbuffered. It is the
equivalent of:
	LITERAL(setvbuf(stream, NULL, _IONBF, 0);)
***/
/*
STDC(1)
*/
