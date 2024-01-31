#include <ctype.h>

/** convert a character to 7-bit ASCII **/

int toascii(int c)
{
	SIGNAL_SAFE(0);
	return (c & 0x7f);
}

__check_1(int, 0, toascii, int)

/***
converts ARGUMENT(c) to 7-bit ASCII.
***/

/*
RETURN(ARGUMENT(c) & 0x7f)
XOBSOLETE(700)
XOPEN(4)
*/
