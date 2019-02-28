#include <fenv.h>

int fesetenv(const fenv_t *envp)
{
	(void)envp;
	return 0;
}

/*d
The fesetenv function establishes the floating-point environment represented by the
object pointed to by envp. The argument envp shall point to an object set by a call to
fegetenv or feholdexcept, or equal a floating-point environment macro. Note that
fesetenv merely installs the state of the floating-point status flags represented through
its argument, and does not raise these floating-point exceptions.
d*/

/*
STDC(199901)
LINK(m)
*/
