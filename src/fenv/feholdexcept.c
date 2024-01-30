#include <fenv.h>
#include "_safety.h"

int feholdexcept(fenv_t *envp)
{
	SIGNAL_SAFE(0);
	(void)envp;
	return 0;
}

/*
The feholdexcept function saves the current floating-point environment in the object
pointed to by envp, clears the floating-point status flags, and then installs a non-stop
(continue on floating-point exceptions) mode, if available, for all floating-point
exceptions. 180)
*/

/*
The feholdexcept function returns zero if and only if non-stop floating-point
exception handling was successfully installed.
*/

/*
STDC(199901)
LINK(m)
*/
