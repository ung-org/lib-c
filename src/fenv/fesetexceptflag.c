#if 0

#include <fenv.h>

int fesetexceptflag(const fexcept_t *flagp, int excepts)
{
	(void)flagp; (void)excepts;
	return 0;
}

/*d
The fesetexceptflag function sets the floating-point status flags indicated by the
argument excepts to the states stored in the object pointed to by flagp. The value of
*flagp shall have been set by a previous call to fegetexceptflag whose second
argument represented at least those floating-point exceptions represented by the argument
excepts. This function does not raise floating-point exceptions, but only sets the state
of the flags.
d*/

/*
STDC(199901)
LINK(m)
*/


#endif
