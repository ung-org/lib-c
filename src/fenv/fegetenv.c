#include <fenv.h>
#include "_safety.h"

int fegetenv(fenv_t *envp)
{
	SIGNAL_SAFE(0);
	(void)envp;
	return 0;
}

/*
The fegetenv function stores the current floating-point environment in the object
pointed to by envp.
*/

/*
STDC(199901)
LINK(m)
*/
