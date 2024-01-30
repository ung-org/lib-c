#include <fenv.h>
#include "_safety.h"

int feclearexcept(int excepts)
{
	SIGNAL_SAFE(0);
	return excepts;
}

/*
The feclearexcept function clears the supported floating-point exceptions
represented by its argument.
*/

/*
STDC(199901)
LINK(m)
*/
