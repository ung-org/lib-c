#if 0

#include <fenv.h>

int fegetenv(fenv_t *envp)
{
	(void)envp;
	return 0;
}

/*d
The fegetenv function stores the current floating-point environment in the object
pointed to by envp.
d*/

/*
STDC(199901)
LINK(m)
*/


#endif
