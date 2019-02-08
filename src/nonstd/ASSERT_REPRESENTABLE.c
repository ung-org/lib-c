#include <nonstd/assert.h>

#ifndef NDEBUG
#define ASSERT_REPRESENTABLE(_n, _min, _max, _type, _sentinel) do { \
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
#define ASSERT_REPRESENTABLE(_n, _min, _max, _type, _sentinel)
#endif
