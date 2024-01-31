#ifndef ___ASSERT_H__
#define ___ASSERT_H__

#include <errno.h>
#include <stdio.h>
#include "stdlib/_stdlib.h"
#include "signal/_signal.h"

#if 0
_Thread_local
#endif
extern struct __checked_call {
	char *file;
	char *func;
	unsigned long long line;
} __checked_call;

#ifndef NDEBUG
#define ASSERT_NONNULL(__ptr) do { \
	if (!__ptr) { \
		struct __constraint_info _ci = {0}; \
		_ci.func = __func__; \
		__stdlib.constraint_handler("Undefined behavior: " \
			"Parameter " #__ptr " can not be NULL", &_ci, 0 /* was EFAULT */); \
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

#define ASSERT_NOOVERLAP(__p1, __l1, __p2, __l2) do { \
	/* TODO */ (void)(__p1); (void)(__l1); (void)(__p2); (void)(__l2); \
} while (0)

#define ASSERT_REPRESENTABLE(_n, _min, _max, _type, _sentinel) do { \
	if (!(((_n) == (_sentinel)) || (((_min) <= (_n)) && ((_n) <= (_max))))) { \
		struct __constraint_info _ci = {0}; \
		_ci.func = __func__; \
		_ci.value = _n; \
		__stdlib.constraint_handler("Undefined behavior: " \
			"Parameter " #_n " must be representable as a " #_type \
			" or be equal to " #_sentinel, &_ci, ERANGE); \
	} \
	} while (0)

#define SIGNAL_SAFE(__n) do { \
	if (__n == 0 && __signal.current != 0) { \
		struct __constraint_info _ci = {0}; \
		_ci.func = __func__; \
		_ci.signal = __signal.current; \
		__signal.current = 0; \
		__stdlib.constraint_handler("Undefined behavior: " \
			"Standard library function called from signal handler", \
			&_ci, 0); \
	} \
} while (0)

#define __setchecked(__file, __func, __line) \
	do { \
		__checked_call.func = (char*)func; \
		__checked_call.file = (char*)file; \
		__checked_call.line = line; \
	} while (0)

#define __vcheck_0(__fn) \
	void __#__fn(const char * file, const char * func, unsigned long long line) { \
		__setchecked(file, func, line); \
		__fn(); \
		__setchecked(NULL, NULL, 0); \
	}

#define __check_0(__type, __def, __fn) \
	__type __##__fn(const char * file, const char * func, unsigned long long line) { \
		__type ret = __def; \
		__setchecked(file, func, line); \
		ret = __fn(); \
		__setchecked(NULL, NULL, 0); \
		return ret; \
	}

#define __check_1(__type, __def, __fn, __t1) \
	__type __##__fn(const char * file, const char * func, unsigned long long line, __t1 a1) { \
		__type ret = __def; \
		__setchecked(file, func, line); \
		ret = __fn(a1); \
		__setchecked(NULL, NULL, 0); \
		return ret; \
	}

#define __check_2(__type, __def, __fn, __t1, __t2) \
	__type __##__fn(const char * file, const char * func, unsigned long long line, __t1 a1, __t2 a2) { \
		__type ret = __def; \
		__setchecked(file, func, line); \
		ret = __fn(a1, a2); \
		__setchecked(NULL, NULL, 0); \
		return ret; \
	}

#define __check_3(__type, __def, __fn, __t1, __t2, __t3) \
	__type __##__fn(const char * file, const char * func, unsigned long long line, __t1 a1, __t2 a2, __t3 a3) { \
		__type ret = __def; \
		__setchecked(file, func, line); \
		ret = __fn(a1, a2, a3); \
		__setchecked(NULL, NULL, 0); \
		return ret; \
	}
#else

#define ASSERT_REPRESENTABLE(_n, _min, _max, _type, _sentinel)
#define ASSERT_NOOVERLAP(__x, __y, __s)
#define ASSERT_NONNULL(x)
#define ASSERT_NONZERO(n)

#endif

#endif
