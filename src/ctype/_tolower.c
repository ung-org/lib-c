#if 0

#include <ctype.h>

/** convert an uppercase letter to lowercase **/

#define _tolower(__c)                                               tolower(__c)

/***
converts an uppercase letter to its equivalent lowercase letter in the current
locale.
***/

/*
ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF)
RETURN_SUCCESS(ARGUMENT(c) converted to uppercase)
UNDEFINED(ARGUMENT(c) is not an upper-case letter)
LC_CTYPE
XOPEN(4)
XOBSOLETE(700, FUNCTION(tolower))
*/


#endif
