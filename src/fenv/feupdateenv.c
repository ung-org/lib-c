#include <fenv.h>
#include "_safety.h"

int feupdateenv(const fenv_t *envp)
{
	SIGNAL_SAFE(0);
	(void)envp;
	return 0;
}

/*
The feupdateenv function saves the currently raised floating-point exceptions in its
automatic storage, installs the floating-point environment represented by the object
pointed to by envp, and then raises the saved floating-point exceptions. The argument
envp shall point to an object set by a call to feholdexcept or fegetenv, or equal a
floating-point environment macro.
d*/

/*
STDC(199901)
LINK(m)
*/
