#include <fenv.h>
#include "_fenv.h"

int feraiseexcept(int excepts)
{
	SIGNAL_SAFE(0);
	ASSERT_VALID_EXCEPTION_MASK(excepts);
	return excepts;
}

CHECK_1(int, 0, feraiseexcept, int)

/*
The feraiseexcept function raises the supported floating-point exceptions
represented by its argument. 178) The order in which these floating-point exceptions are
raised is unspecified, except as stated in F.7.6. Whether the feraiseexcept function
additionally raises the ‘‘inexact’’ floating-point exception whenever it raises the
‘‘overflow’’ or ‘‘underflow’’ floating-point exception is implementation-defined.
*/

/*
STDC(199901)
LINK(m)
*/
