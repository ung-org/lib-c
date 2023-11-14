#if 0

#include <fenv.h>

int feholdexcept(fenv_t *envp)
{
	(void)envp;
	return 0;
}

/*d
The feholdexcept function saves the current floating-point environment in the object
pointed to by envp, clears the floating-point status flags, and then installs a non-stop
(continue on floating-point exceptions) mode, if available, for all floating-point
exceptions. 180)
d*/

/*r
The feholdexcept function returns zero if and only if non-stop floating-point
exception handling was successfully installed.
r*/

/*
STDC(199901)
LINK(m)
*/


#endif
