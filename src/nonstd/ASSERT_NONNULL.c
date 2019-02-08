#include <nonstd/assert.h>

#ifndef NDEBUG
#define ASSERT_NONNULL(_ptr) do { \
	if (!_ptr) { \
		struct __constraint_info _ci = {0}; \
		_ci.func = __func__; \
		__libc.stdlib.constraint_handler("Undefined behavior: " \
			"Parameter " #_ptr " can not be NULL", &_ci, EFAULT); \
	} \
	} while (0)
#else
#define ASSERT_NONNULL(x)
#endif
