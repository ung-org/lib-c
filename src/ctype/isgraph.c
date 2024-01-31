#include <limits.h>
#include <stdio.h>
#include "_ctype.h"

/** test whether a character is graphic **/

int isgraph(int c)
{
	unsigned int *map = __get_locale()->lc_ctype.ctattr;

	SIGNAL_SAFE(0);
	ASSERT_REPRESENTABLE(c, 0, UCHAR_MAX, unsigned char, EOF);

	return c == EOF ? 0 : map[c] & CT_GRAPH;
}

__check_1(int, 0, isgraph, int)

/***
tests whether ARGUMENT(c) is a character in the class CHARACTER_CLASS(graph)
in the current locale.
***/

/*
RETURN(NONZERO, ARGUMENT(c) is a graphic character)
RETURN(0, ARGUMENT(c) is not a graphic character)
LC_CTYPE
C_LOCALE(`THIS() is true for all printable characters other than SPACE()')
STDC(1)
*/
