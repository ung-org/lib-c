#include <ctype.h>

/** convert a lowercase letter to uppercase **/

#define _toupper(c)                                                   toupper(c)

/***
converts a lowercase letter to its equivalent uppercase letter in the current
locale.
***/

/*
ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF)
RETURN_SUCCESS(ARGUMENT(c) converted to uppercase)
UNDEFINED(ARGUMENT(c) is not a lowercase letter)
LC_CTYPE
XOPEN(4)
XOBSOLETE(700, FUNCTION(toupper))
*/
