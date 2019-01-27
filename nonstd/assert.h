#ifndef __NONSTD_ASSERT_H__
#define __NONSTD_ASSERT_H__
#include "nonstd/types.h"

#define __STDC_WANT_LIB_EXT1__ 1

#include <stdio.h>
#include <errno.h>
#include <stdarg.h>

typedef int errno_t;
typedef void (*constraint_handler_t)(const char * restrict msg, void * restrict ptr, errno_t error);

#ifndef EFAULT
#define EFAULT 10
#endif

#ifndef NDEBUG

# define ASSERT_NONNULL(_ptr) do { \
	if (!_ptr) { \
		struct __constraint_info _ci = {0}; \
		_ci.func = __func__; \
		__libc.stdlib.constraint_handler("Undefined behavior: " \
			"Parameter " #_ptr " can not be NULL", &_ci, EFAULT); \
	} \
} while (0)

# define ASSERT_NONZERO(_n) do { \
	if (!_n) { \
		struct __constraint_info _ci = {0}; \
		_ci.func = __func__; \
		__libc.stdlib.constraint_handler("Undefined behavior: " \
			"Parameter " #_n " can not be 0", &_ci, ERANGE); \
	} \
} while (0)

# define ASSERT_NOOVERLAP(x, y, s) do { \
	/* TODO */ \
} while (0)

# define ASSERT_REPRESENTABLE(_n, _min, _max, _type, _sentinel) do { \
	if (_sentinel && (_n != _sentinel && (_n < _min || _n > _max))) { \
		struct __constraint_info _ci = {0}; \
		_ci.func = __func__; \
		__libc.stdlib.constraint_handler("Undefined behavior: " \
			"Paramater " #_n " must be representable as a " #_type \
			"or be equal to " #_sentinel, &_ci, ERANGE); \
	} else if (_n < _min || _n > _max) { \
		struct __constraint_info _ci = {0}; \
		_ci.func = __func__; \
		__libc.stdlib.constraint_handler("Undefined behavior: " \
			"Parameter " #_n " must be representable as a " #_type, \
			&_ci, ERANGE); \
	} \
} while (0)

#else

# define ASSERT_NONNULL(x) (void(0))
# define ASSERT_NOOVERLAP(x, y, s) (void(0))
# define ASSERT_REPRESENTABLE(n, min, max, type, sentinel) (void(0))
# define ASSERT_NONZERO(n)

#endif

#endif
