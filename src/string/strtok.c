#include <string.h>
#include "nonstd/assert.h"

/** split string into tokens **/
char * strtok(char * restrict s1, const char * restrict s2)
{
	extern char * strtok_r(char *restr, const char *restrict, char **);
	static char *current;

	/* TODO */
	ASSERT_NONNULL(s2);

	/*
	RETURN(CONSTANT(NULL), there are no further tokens, only token separators);
	RETURN(NONNULL, a pointer to the first character of the next token);
	*/

	return strtok_r (s1, s2, &current);
}

/***
splits the string ARGUMENT(s1) into a series of tokens
delimited by characters from the string ARGUMENT(s2).

The first call in a sequence specifies a string for ARGUMENT(s1). Further calls
specify CONSTANT(NULL) in order to continue from the end of the previous token.
The list of token separators in ARGUMENT(s2) may vary from call to call.

When tokens are found, the next token separate character is replaced with a
CHAR(\0), terminating the token.
***/
/*
STDC(1)
*/
