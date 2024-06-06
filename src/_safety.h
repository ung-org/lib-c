#ifndef ___SAFETY_H__
#define ___SAFETY_H__

_Noreturn void __undefined(const char *, ...);

#define GCC_SSE_HACK __attribute__((noinline, target("no-sse")))

#include <errno.h>
#include <stdlib.h>
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

#if 0
_Thread_local
#endif
extern struct __dangerous {
	const char *func;
	const char *param;
	const void *addr;
} __dangerous;

#ifndef NDEBUG
#define UNDEFINED(...) __undefined(__VA_ARGS__)

#define DANGER(__s) __dangerous = ((__s != NULL && __dangerous.func == NULL) ? (struct __dangerous){ .func = __func__, .param = #__s, .addr = __s } : (struct __dangerous){ 0 })

#define ADD_PREV(__val, __arr, __count) do { \
	void *tmp = realloc((__arr), ((__count) + 1) * sizeof((__arr)[0])); \
	if (tmp == NULL) { \
		fprintf(stderr, "Out of memory tracking values\n"); \
		abort(); \
	} \
	(__arr) = tmp; \
	(__arr)[__count] = __val; \
	(__count)++; \
} while (0)

#define ADD_PREV_STRING(__val, __arr, __count) do { \
	void *tmp = realloc((__arr), ((__count) + 1) * sizeof((__arr)[0])); \
	if (tmp == NULL) { \
		fprintf(stderr, "Out of memory tracking values\n"); \
		abort(); \
	} \
	(__arr) = tmp; \
	(__arr)[__count] = strdup(__val); \
	(__count)++; \
} while (0)

#define ASSERT_PREV(__val, __arr, __count, __prev) do { \
	int __found = 0; \
	for (size_t __i = 0; __i < (__count); __i++) { \
		if ((__arr)[__i] == (__val)) { \
			__found = 1; \
			break; \
		} \
	} \
	if (!__found) { \
		UNDEFINED("In call to %s(): %s was not returned by a previous call to %s", __func__, #__val, __prev); \
	} \
} while (0)

#define ASSERT_PREV_STRING(__val, __arr, __count, __prev) do { \
	int __found = 0; \
	for (size_t __i = 0; __i < (__count); __i++) { \
		printf("checking '%s' vs [%zu] '%s'\n", (__val), __i, (__arr)[__i]); \
		if (strcmp((__arr)[__i], (__val)) == 0) { \
			__found = 1; \
			break; \
		} \
	} \
	if (!__found) { \
		UNDEFINED("In call to %s(): %s was not returned by a previous call to %s", __func__, __val, __prev); \
	} \
} while (0)

#define ASSERT_NONNULL(__ptr) do { \
	if (!__ptr) { \
		UNDEFINED("In call to %s(), parameter %s cannot be NULL", __func__, #__ptr); \
	} \
} while (0)

#define ASSERT_NOOVERLAP(__p1, __l1, __p2, __l2) do { \
	char *__s1 = (char*)(__p1); \
	char *__s2 = (char*)(__p2); \
	if (((__s1 < __s2) && ((__s1 + (__l1)) > __s2)) || ((__s1 > __s2) && ((__s2 + (__l2)) > __s1))) { \
		UNDEFINED("In call to %s(), parameters %s (%p-%p) and %s (%p-%p) overlap", __func__, #__p1, __p1, __s1 + __l1 - 1, #__p2, __p2, __s2 + __l2 - 1); \
	} \
} while (0)

#define SIGNAL_SAFE(__n) do { \
	if (__n == 0 && __signal_h.current != 0) { \
		int _sig = __signal_h.current; \
		UNDEFINED("Function %s() is not safe to call from a signal handler (signal %d)", __func__, _sig); \
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

#define UNDEFINED(...)
#define ASSERT_NOOVERLAP(__x, __y, __s)
#define ASSERT_NONNULL(x)
#define DANGER(__s)
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
