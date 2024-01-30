#include <stdlib.h>
#include "_stdlib.h"

/** convert wide character to multibyte character **/

int wctomb(char * s, wchar_t wchar)
{
	SIGNAL_SAFE(0);

	/* FIXME: forward dependency on AMD1 */
	#if 0
	static mbstate_t ps = 0;
	return wcrtomb(s, wchar, &ps);
	#else
	(void)s; (void)wchar;
	return 0;
	#endif
}

/***
converts the wide character ARGUMENT(wchar) to a multibyte character, which is
stored at the address ARGUMENT(s). At most CONSTANT(MB_CUR_MAX) bytes are
stored.

If ARGUMENT(s) is CONSTANT(NULL), fn(wctomb) tests whether multibyte encodings
carry state dependency.
***/

/*
LC_CTYPE
RETURN(0, `If ARGUMENT(s) is CONSTANT(NULL), multibyte encodings do not have state dependencies')
RETURN(NONZERO, `If ARGUMENT(s) is CONSTANT(NULL), multibyte encodings do have state dependencies')
RETURN(-1, The value of ARGUMENT(wchar) does not correspond to a valid multibyte character)
RETURN(TYPE(int), The number of bytes contained in the multibyte character corresponding to ARGUMENT(wchar))
STDC(1)
*/
