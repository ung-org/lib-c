#if 0

#include <fenv.h>

int feraiseexcept(int excepts)
{
	return excepts;
}

/*d
The feraiseexcept function raises the supported floating-point exceptions
represented by its argument. 178) The order in which these floating-point exceptions are
raised is unspecified, except as stated in F.7.6. Whether the feraiseexcept function
additionally raises the ‘‘inexact’’ floating-point exception whenever it raises the
‘‘overflow’’ or ‘‘underflow’’ floating-point exception is implementation-defined.
d*/

/*
STDC(199901)
LINK(m)
*/


#endif
