#include <fenv.h>
#include "_safety.h"

struct __fenv_t {
	int flags;
};

struct __fexcept_t {
	int mask;
	int set;
};

extern struct __fenv_h {
	struct __fexcept_t *fexcept;
	size_t nfexcept;
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

#define ASSERT_PREV_FEXCEPT(__f, __e) do { \
        if (!(__f->__impl >= __fenv_h.fexcept && __f->__impl <= __fenv_h.fexcept + __fenv_h.nfexcept)) { \
		UNDEFINED("In call to %s(): %s must be previously set by calling fegetexceptflag()", __func__, #__f); \
	} \
	if ((__f->__impl->mask & (__e)) != (__e)) { \
		UNDEFINED("In call to %s(): Attempting to set flags not specified by previous call to fegetexceptflag()", __func__); \
	} \
} while (0)

#define ASSERT_PREV_FENV(__f) do { \
        if (!(__f == FE_DFL_ENV) || (__f->__impl >= __fenv_h.fenv && __f->__impl <= __fenv_h.fenv + __fenv_h.nfenv)) { \
		UNDEFINED("In call to %s(): %s must be previously set by calling fegetenv() or feholdexcept()", __func__, #__f); \
	} \
} while (0)
#endif
