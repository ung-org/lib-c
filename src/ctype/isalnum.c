#include <ctype.h>
#include "_ctype.h"

/** test whether a character is alphanumeric **/

int isalnum(int c)
{
	SIGNAL_SAFE(0);
	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF);
	return isalpha(c) || isdigit(c);
}

__check_1(int, 0, isalnum, int)

/***
tests whether ARGUMENT(c) is a character in the class
CHARACTER_CLASS(alpha) or CHARACTER_CLASS(digit) in the current locale.
***/

/*
RETURN(NONZERO, ARGUMENT(c) is an alpanumeric character)
RETURN(0, ARGUMENT(c) is not an alphanumeric character)
LC_CTYPE
STDC(1)
*/
