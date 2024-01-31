#ifndef ___ASSERT_H__
#define ___ASSERT_H__

_Noreturn void __undefined(const char *, ...);

#include <errno.h>
#include <stdio.h>
/*
#include "stdlib/_stdlib.h"
*/
#include "signal/_signal.h"

#if __STDC_VERSION__ >= 199901L
#include <inttypes.h>
#else
#include "inttypes/uintmax_t.h"
#endif

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
		__undefined("In call to %s(), parameter %s cannot be NULL", __func__, #__ptr); \
	} \
} while (0)

#define ASSERT_NOOVERLAP(__p1, __l1, __p2, __l2) do { \
	char *__s1 = (char*)(__p1); \
	char *__s2 = (char*)(__p2); \
	if (((__s1 < __s2) && ((__s1 + (__l1)) >= __s2)) || ((__s1 > __s2) && ((__s2 + (__l2)) >= __s1))) { \
		__undefined("In call to %s(), parameters %s and %s overlap", __func__, #__p1, #__p2); \
	} \
} while (0)

#define SIGNAL_SAFE(__n) do { \
	if (__n == 0 && ___signal.current != 0) { \
		int _sig = ___signal.current; \
		__undefined("Function %s() is not safe to call from a signal handler (signal %d)", __func__, _sig); \
	} \
} while (0)

#define __setchecked(__file, __func, __line) \
	do { \
		__checked_call.func = (char*)func; \
		__checked_call.file = (char*)file; \
		__checked_call.line = line; \
	} while (0)

#define VCHECK_0(__fn) \
	void __##__fn(const char * file, const char * func, unsigned long long line) { \
		__setchecked(file, func, line); \
		__fn(); \
		__setchecked(NULL, NULL, 0); \
	}
#define __vcheck_0(__fn) VCHECK_0(__fn)

#define VCHECK_1(__fn, __t1) \
	void __##__fn(const char * file, const char * func, unsigned long long line, __t1 __a1) { \
		__setchecked(file, func, line); \
		__fn(__a1); \
		__setchecked(NULL, NULL, 0); \
	}
#define __vcheck_1(__fn, __t1) VCHECK_1(__fn, __t1)

#define VCHECK_2(__fn, __t1, __t2) \
	void __##__fn(const char * file, const char * func, unsigned long long line, __t1 __a1, __t2 __a2) { \
		__setchecked(file, func, line); \
		__fn(__a1, __a2); \
		__setchecked(NULL, NULL, 0); \
	}
#define vcheck_2(__fn, __t1, __t2) VCHECK_2(__fn, __t1, __t2)

#define CHECK_0(__type, __def, __fn) \
	__type __##__fn(const char * file, const char * func, unsigned long long line) { \
		__type ret = __def; \
		__setchecked(file, func, line); \
		ret = __fn(); \
		__setchecked(NULL, NULL, 0); \
		return ret; \
	}

#define CHECK_1(__type, __def, __fn, __t1) \
	__type __##__fn(const char * file, const char * func, unsigned long long line, __t1 a1) { \
		__type ret = __def; \
		__setchecked(file, func, line); \
		ret = __fn(a1); \
		__setchecked(NULL, NULL, 0); \
		return ret; \
	}

#define CHECK_2(__type, __def, __fn, __t1, __t2) \
	__type __##__fn(const char * file, const char * func, unsigned long long line, __t1 a1, __t2 a2) { \
		__type ret = __def; \
		__setchecked(file, func, line); \
		ret = __fn(a1, a2); \
		__setchecked(NULL, NULL, 0); \
		return ret; \
	}

#define CHECK_3(__type, __def, __fn, __t1, __t2, __t3) \
	__type __##__fn(const char * file, const char * func, unsigned long long line, __t1 a1, __t2 a2, __t3 a3) { \
		__type ret = __def; \
		__setchecked(file, func, line); \
		ret = __fn(a1, a2, a3); \
		__setchecked(NULL, NULL, 0); \
		return ret; \
	}

#define CHECK_4(__type, __def, __fn, __t1, __t2, __t3, __t4) \
	__type __##__fn(const char * file, const char * func, unsigned long long line, __t1 a1, __t2 a2, __t3 a3, __t4 a4) { \
		__type ret = __def; \
		__setchecked(file, func, line); \
		ret = __fn(a1, a2, a3, a4); \
		__setchecked(NULL, NULL, 0); \
		return ret; \
	}
#else

#define ASSERT_NOOVERLAP(__x, __y, __s)
#define ASSERT_NONNULL(x)
#define VCHECK_0(f)
#define VCHECK_1(f, a)
#define VCHECK_2(f, a, b)
#define VCHECK_3(f, a, b, c)
#define VCHECK_4(f, a, b, c, d)
#define CHECK_0(t, d, f)
#define CHECK_1(t, d, f, a)
#define CHECK_2(t, d, f, a, b)
#define CHECK_3(t, d, f, a, b, c)
#define CHECK_4(t, d, f, a, b, c, d)

#endif

#endif
