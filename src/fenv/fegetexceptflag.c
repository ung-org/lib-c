#if 0

#include <fenv.h>

int fegetexceptflag(fexcept_t *flagp, int excepts)
{
	(void)flagp; (void)excepts;
	return 0;
}

/*d
The fegetexceptflag function stores an implementation-defined representation of
the states of the floating-point status flags indicated by the argument excepts in the
object pointed to by the argument flagp.
d*/

/*
STDC(199901)
LINK(m)
*/


#endif
