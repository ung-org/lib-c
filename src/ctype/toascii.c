#include <ctype.h>

/** convert a character to 7-bit ASCII **/
int toascii(int c)
{
	return (c & 0x7f);
}

#endif

/***
The fn(toascii) function converts arg(c) to 7-bit ASCII.
***/

/* RETURN: arg(c) & 0x7f */

/* UNDEFINED: - */
/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/*
XOPEN(4)
*/
