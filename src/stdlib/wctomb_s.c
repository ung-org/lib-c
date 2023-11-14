#if 0

#include <stdlib.h>

/** convert wide character to multibyte character **/
errno_t wctomb_s(int * restrict status, char * restrict s, rsize_t smax, wchar_t wc)
{
	__C_EXT(1, 201112L);
	/* TODO */
	return 0;
}

/***
The fn(wctomb) function converts the wide character arg(wchar) to a multibyte
character, which is stored at the address arg(s). At most macro(MB_CUR_MAX)
bytes are stored.

If arg(s) is macro(NULL), fn(wctomb) tests whether multibyte encodings carry
state dependency.
***/

/* UNSPECIFIED: - */
/* UNDEFINED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/* RETURN(0): if arg(s) is macro(NULL), multibyte encodings do not have state dependencies */
/* RETURN(NZ): if arg(s) is macro(NULL), multibyte encodings do have state dependencies */
/* RETURN(-1): the value of arg(wchar) does not correspond to a valid multibyte character */
/* RETURN: the number of bytes contained in the multibyte character corresponding to arg(wchar) */

/*
CEXT1(201112)
*/


#endif
