#include <stdio.h>
#include "string.h"
#include "errno.h"

/** print an error message **/
void perror(const char *s)
{
	if (s != NULL && *s != '\0') {
		fprintf(stderr, "%s: ", s);
	}
	fprintf(stderr, "%s\n", strerror(errno));
}

/***
writes an error message to IDENTIFIER(stderr).

If ARGUMENT(s) is CONSTANT(NULL), the error message is a string representation of the
current value of IDENTIFIER(errno).

If ARGUMENT(s) is not CONSTANT(NULL), the error message will be preceded by the string
pointed to by ARGUMENT(s), a colon (CHAR(:)), and a space.
***/

/*
POSIX_(L_C_MESSAGES)
*/
/*
STDC(1)
*/
