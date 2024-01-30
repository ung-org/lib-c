#include <fenv.h>
#include "_safety.h"

int fegetexceptflag(fexcept_t *flagp, int excepts)
{
	SIGNAL_SAFE(0);
	(void)flagp; (void)excepts;
	return 0;
}

/*
The fegetexceptflag function stores an implementation-defined representation of
the states of the floating-point status flags indicated by the argument excepts in the
object pointed to by the argument flagp.
*/

/*
STDC(199901)
LINK(m)
*/
