#include <fenv.h>
#include "_fenv.h"

int fesetenv(const fenv_t *envp)
{
	SIGNAL_SAFE(0);
	ASSERT_PREVIOUS_FENV(envp);
	(void)envp;
	return 0;
}

CHECK_1(int, 0, fesetenv, const fenv_t *)

/*
The fesetenv function establishes the floating-point environment represented by the
object pointed to by envp. The argument envp shall point to an object set by a call to
fegetenv or feholdexcept, or equal a floating-point environment macro. Note that
fesetenv merely installs the state of the floating-point status flags represented through
its argument, and does not raise these floating-point exceptions.
*/

/*
STDC(199901)
LINK(m)
*/
