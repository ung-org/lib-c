#include <stdlib.h>

/** count bytes in multibyte character **/
int mblen(const char * s, size_t n)
{
	/* FIXME: forward dependency on AMD1 */
	#if 0
	mbstate_t ps = 0;
	return mbrlen(s, n, &ps);
	#else
	(void)s; (void)n;
	return 0;
	#endif
}

/***
counts the number of bytes in the multibyte character
starting at ARGUMENT(s), if the next ARGUMENT(n) or fewer bytes contain a full multibyte
character.

If ARGUMENT(s) is CONSTANT(NULL), THIS() tests whether multibyte encodings carry
state dependency.
***/

/*
LC_CTYPE
RETURN(0, If ARGUMENT(s) is CONSTANT(NULL), multibyte encodings do not have state dependencies);
RETURN(NZ, If ARGUMENT(s) is CONSTANT(NULL), multibyte encodings do have state dependencies);
RETURN(-1, The ARGUMENT(n) bytes at ARGUMENT(s) do not form a valid mutlibyte character);
RETURN(0, ARGUMENT(s) points to a null character);
RETURN(TYPE(int), the number of bytes in the multibyte character);
STDC(1)
*/
