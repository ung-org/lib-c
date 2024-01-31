#include <fenv.h>
#include "_fenv.h"

int fegetexceptflag(fexcept_t *flagp, int excepts)
{
	SIGNAL_SAFE(0);
	ASSERT_VALID_EXCEPTION_MASK(excepts);
	(void)flagp; (void)excepts;
	return 0;
}

CHECK_2(int, 0, fegetexceptflag, fexcept_t *, int)

/*
The fegetexceptflag function stores an implementation-defined representation of
the states of the floating-point status flags indicated by the argument excepts in the
object pointed to by the argument flagp.
*/

/*
STDC(199901)
LINK(m)
*/
