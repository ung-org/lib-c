#include <fenv.h>
#include "_fenv.h"

int fegetexceptflag(fexcept_t *flagp, int excepts)
{
	SIGNAL_SAFE(0);
	ASSERT_VALID_EXCEPTION_MASK(excepts);
	if (!(flagp->__impl >= __fenv_h.fexcept && flagp->__impl <= __fenv_h.fexcept + __fenv_h.nfexcept)) {
		struct __fexcept_t *tmp = realloc(__fenv_h.fexcept, sizeof(*__fenv_h.fexcept) * (__fenv_h.nfexcept + 1));
		if (tmp == NULL) {
			abort();
		}
		__fenv_h.fexcept = tmp;
		flagp->__impl = &(__fenv_h.fexcept[__fenv_h.nfexcept++]);
	}
	flagp->__impl->mask = excepts;
	return 0;
}

CHECK_2(int, 0, fegetexceptflag, fexcept_t *, int)

/*
The fegetexceptflag function stores an implementation-defined representation of
the states of the floating-point status flags indicated by the argument excepts in the
object pointed to by the argument flagp.
*/

/*
STDC(199901)
LINK(m)
*/
