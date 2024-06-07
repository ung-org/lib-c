#include <fenv.h>
#include "_fenv.h"

int fesetexceptflag(const fexcept_t *flagp, int excepts)
{
	SIGNAL_SAFE(0);
	ASSERT_PREV_FEXCEPT(flagp, excepts);
	ASSERT_VALID_EXCEPTION_MASK(excepts);
	(void)flagp; (void)excepts;
	return 0;
}

CHECK_2(int, 0, fesetexceptflag, const fexcept_t *, int)

/*
The fesetexceptflag function sets the floating-point status flags indicated by the
argument excepts to the states stored in the object pointed to by flagp. The value of
*flagp shall have been set by a previous call to fegetexceptflag whose second
argument represented at least those floating-point exceptions represented by the argument
excepts. This function does not raise floating-point exceptions, but only sets the state
of the flags.
*/

/*
STDC(199901)
LINK(m)
*/
