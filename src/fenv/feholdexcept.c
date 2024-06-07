#include <fenv.h>
#include "_fenv.h"

int feholdexcept(fenv_t *envp)
{
	SIGNAL_SAFE(0);
	ASSERT_NONNULL(envp);
	fegetenv(envp);
	/* TODO: clears the floating-point status flags, and then installs a non-stop (continue on floating-point exceptions) mode, if available, for all floating-point exceptions. */
	return 0;
}

CHECK_1(int, 0, feholdexcept, fenv_t *)

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
