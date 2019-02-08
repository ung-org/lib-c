#include <fenv.h>

int fegetround(void)
{
	return 0;
}

/*d
The fegetround function gets the current rounding direction.
d*/

/*r
The fegetround function returns the value of the rounding direction macro
representing the current rounding direction or a negative value if there is no such
rounding direction macro or the current rounding direction is not determinable.
r*/

/*
STDC(199901)
LINK(m)
*/
