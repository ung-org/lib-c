#include <fenv.h>
#include "_safety.h"

struct __fenv_t {
	int flags;
};

extern struct __fenv_h {
	fexcept_t *valid_fexcept;
	size_t nvalid_fexcept;
	struct __fenv_t *fenv;
	size_t nfenv;
} __fenv_h;

#ifdef NDEBUG
#define ASSERT_VALID_EXCEPTION_MASK(_n) (void)(_n)
#define ASSERT_PREV_FEXCEPT(_f, _e) (void)(_f)
#define ASSERT_PREV_FENV(_f) (void)(_f)
#else
#define ASSERT_VALID_EXCEPTION_MASK(_n) do { \
	if (((_n) & ~(FE_ALL_EXCEPT)) != 0) { \
		UNDEFINED("In call to %s(): exception mask 0x(%jx) is not valid", __func__, (uintmax_t)(_n)); \
	} \
} while (0)

/* TODO!!! */
#define ASSERT_PREV_FEXCEPT(_f, _e) (void)(_f)
#define ASSERT_PREV_FENV(__f) do { \
        if (!(envp == FE_DFL_ENV) || (envp->__impl >= __fenv_h.fenv && envp->__impl <= __fenv_h.fenv + __fenv_h.nfenv)) { \
		UNDEFINED("In call to %s(): %s must be previously set by calling fegetenv() or feholdexcept()", __func__, #__f); \
	} \
} while (0)
#endif
