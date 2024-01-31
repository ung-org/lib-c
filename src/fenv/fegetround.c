#include <fenv.h>
#include "_fenv.h"

int fegetround(void)
{
	SIGNAL_SAFE(0);
	return 0;
}

CHECK_0(int, 0, fegetround)

/*
The fegetround function gets the current rounding direction.
*/

/*
The fegetround function returns the value of the rounding direction macro
representing the current rounding direction or a negative value if there is no such
rounding direction macro or the current rounding direction is not determinable.
*/

/*
STDC(199901)
LINK(m)
*/
