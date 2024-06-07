#include <fenv.h>
#include <stdlib.h>
#include "_fenv.h"

int fegetenv(fenv_t *envp)
{
	SIGNAL_SAFE(0);
	ASSERT_NONNULL(envp);
	if (!(envp->__impl >= __fenv_h.fenv && envp->__impl <= __fenv_h.fenv + __fenv_h.nfenv)) {
		struct __fenv_t *tmp = realloc(__fenv_h.fenv, sizeof(*__fenv_h.fenv) * (__fenv_h.nfenv + 1));
		if (tmp == NULL) {
			abort();
		}
		__fenv_h.fenv = tmp;
		envp->__impl = &(__fenv_h.fenv[__fenv_h.nfenv++]);
	}
	/* TODO: save state in envp->__impl */
	return 0;
}

CHECK_1(int, 0, fegetenv, fenv_t *)

/*
The fegetenv function stores the current floating-point environment in the object
pointed to by envp.
*/

/*
STDC(199901)
LINK(m)
*/
