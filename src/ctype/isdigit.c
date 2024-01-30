#include <ctype.h>
#include <limits.h>
#include <stdio.h>
#include "_safety.h"

/** test whether a character is a digit **/

int isdigit(int c)
{
	SIGNAL_SAFE(0);
	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF);

	return isxdigit(c) && !isalpha(c);
}

/***
tests whether ARGUMENT(c) is a character in the class CHARACTER_CLASS(digit)
in the current locale.
***/

/*
RETURN(NONZERO, ARGUMENT(c) is a digit)
RETURN(0, ARGUMENT(c) is not a digit)
LC_CTYPE
C_LOCALE(`THIS() is true for characters CHAR(0), CHAR(1), CHAR(2), CHAR(3), CHAR(4), CHAR(5), CHAR(6), CHAR(7), CHAR(8), and CHAR(9)')
STDC(1)
*/
