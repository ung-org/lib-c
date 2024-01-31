#include <fenv.h>
#include "_fenv.h"

int feclearexcept(int excepts)
{
	SIGNAL_SAFE(0);
	ASSERT_VALID_EXCEPTION_MASK(excepts);
	return excepts;
}

CHECK_1(int, 0, feclearexcept, int)

/*
The feclearexcept function clears the supported floating-point exceptions
represented by its argument.
*/

/*
STDC(199901)
LINK(m)
*/
