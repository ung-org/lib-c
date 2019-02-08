#include <stdlib.h>

/** convert a multibyte character to a wide character **/

int mbtowc(wchar_t * restrict pwc, const char * restrict s, size_t n)
{
	/* FIXME: forward dependency on AMD1 */
	#if 0
	static mbstate_t ps = 0;
	return mbrtowc(pwc, s, n, &ps);
	#else
	(void)pwc; (void)s; (void)n;
	return 0;
	#endif
}

/***
converts the multibyte character, of no more than ARGUMENT(n) bytes, at
ARGUMENT(s) to a wide character, which is stored at the address pointed to by
ARGUMENT(pwc).

If ARGUMENT(s) is CONSTANT(NULL), THIS() tests whether multibyte encodings carry
state dependency.

If ARGUMENT(pwc) is CONSTANT(NULL), THIS() counts the number of bytes in the
multibyte character at ARGUMENT(s).
***/

/*
LC_CTYPE
RETURN(0, If ARGUMENT(s) is CONSTANT(NULL), multibyte encodings do not have state dependencies)
RETURN(NONZERO, If ARGUMENT(s) is CONSTANT(NULL), multibyte encodings do have state dependencies)
RETURN(-1, The ARGUMENT(n) bytes at ARGUMENT(s) do not form a valid mutlibyte character)
RETURN(0, ARGUMENT(s) points to a null character)
RETURN(TYPE(int), the number of bytes in the converted multibyte character)
STDC(1)
*/
