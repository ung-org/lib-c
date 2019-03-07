#include <nonstd/assert.h>

#ifndef NDEBUG
#define ASSERT_NONZERO(__n) do { \
	if (!__n) { \
		struct __constraint_info _ci = {0}; \
		_ci.func = __func__; \
		__libc.stdlib.constraint_handler("Undefined behavior: " \
			"Parameter " #__n " can not be 0", &_ci, ERANGE); \
	} \
	} while (0)
#else
#define ASSERT_NONZERO(n)
#endif
