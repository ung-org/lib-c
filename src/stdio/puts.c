#include <stdio.h>

/** write a string to stoud **/
int puts(const char *s)
{
	if (fputs(s, stdout) == EOF) {
		return EOF;
	}

        if (putc('\n', stdout) == EOF) {
                return EOF;
        }

	/*
	RETURN_SUCCESS(NONNEGATIVE());
	RETURN_FAILURE(CONSTANT(EOF));
	*/
        return 1;
}

/***
function writes the string pointed to by ARGUMENT(s) to IDENTIFIER(stdout),
followed by a newline. The terminated CHAR(\0) is not written.
***/
/*
STDC(1)
*/
