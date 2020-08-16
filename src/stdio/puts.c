#include <stdio.h>
#include "_stdio.h"

/** write a string to stoud **/

int puts(const char *s)
{
	int ret = 1;

	flockfile(stdout);

	while (*s) {
		if (putc_unlocked(*s, stdout) == EOF) {
			ret = EOF;
			break;
		}
		s++;
	}

        if (putc_unlocked('\n', stdout) == EOF) {
		ret = EOF;
        }

	funlockfile(stdout);

	/*
	RETURN_SUCCESS(NONNEGATIVE());
	RETURN_FAILURE(CONSTANT(EOF));
	*/

        return ret;
}

/***
function writes the string pointed to by ARGUMENT(s) to IDENTIFIER(stdout),
followed by a newline. The terminated CHAR(\0) is not written.
***/

/*
STDC(1)
*/
