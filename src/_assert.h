#ifndef ___ASSERT_H__
#define ___ASSERT_H__

#include "stdlib/_stdlib.h"
#include "errno/ERANGE.h"

#ifndef NDEBUG
#define ASSERT_NONNULL(__ptr) do { \
	if (!__ptr) { \
		struct __constraint_info _ci = {0}; \
		_ci.func = __func__; \
		__stdlib.constraint_handler("Undefined behavior: " \
			"Parameter " #__ptr " can not be NULL", &_ci, EFAULT); \
	} \
} while (0)

#define ASSERT_NONZERO(__n) do { \
	if (!__n) { \
		struct __constraint_info _ci = {0}; \
		_ci.func = __func__; \
		__stdlib.constraint_handler("Undefined behavior: " \
			"Parameter " #__n " can not be 0", &_ci, ERANGE); \
	} \
} while (0)

#define ASSERT_NOOVERLAP(__x, __y, __s) do { \
	/* TODO */ \
} while (0)

#define ASSERT_REPRESENTABLE(_n, _min, _max, _type, _sentinel) do { \
	if ((_n) != _sentinel && ((_n) < _min || (_n) > _max)) { \
		struct __constraint_info _ci = {0}; \
		_ci.func = __func__; \
		__stdlib.constraint_handler("Undefined behavior: " \
			"Parameter " #_n " must be representable as a " #_type \
			" or be equal to " #_sentinel, &_ci, ERANGE); \
	} \
	} while (0)
#else

#define ASSERT_REPRESENTABLE(_n, _min, _max, _type, _sentinel)
#define ASSERT_NOOVERLAP(__x, __y, __s)
#define ASSERT_NONNULL(x)
#define ASSERT_NONZERO(n)

#endif

#endif
