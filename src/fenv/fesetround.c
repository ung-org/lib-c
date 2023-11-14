#if 0

#include <fenv.h>

int fesetround(int round)
{
	return round;
}

/*d */
/* The fesetround function establishes the rounding direction represented by its */
/* argument round. If the argument is not equal to the value of a rounding direction macro, */
/* the rounding direction is not changed. */
/* d*/

/*r */
/* The fesetround function returns a zero value if and only if the argument is equal to a */
/* rounding direction macro (that is, if and only if the requested rounding direction was */
/* established). */
/* r*/

/*
STDC(199901)
LINK(m)
*/


#endif
