#ifndef ___WCHAR_H__
#define ___WCHAR_H__

#include <wchar.h>
#include <stdlib.h>
#include "_safety.h"
#include "locale/_locale.h"

struct __mbstate_t {
	unsigned int ctype_epoch;
	enum { NONE, WTOMB, MBTOW } dir;
	const char *mbs;
	const wchar_t *wcs;
};

/* use mbstate_t: mbrlen, mbrtowc, wcrtomb, mbsrtowcs, wcsrtombs */
/* TODO: save a pool of reusable struct __mbstate_t objects to avoid massive leakage */
#define SET_MBSTATE(__m, __d, __s, __w) do { \
	if (__m->__impl == NULL) { \
		__m->__impl = malloc(sizeof(*__m->__impl)); \
	} \
	__m->__impl->ctype_epoch = __get_locale()->ctype_epoch; \
	__m->__impl->dir = __d; \
	__m->__impl->mbs = __s; \
	__m->__impl->wcs = __w; \
} while (0)

#ifndef NDEBUG
#define ASSERT_MBSTATE(__m, __d, __s, __w) do { \
	if (__m != NULL && __m->__impl != NULL) { \
		struct __mbstate_t *_m = __m->__impl; \
		if (_m->ctype_epoch != 0 && _m->ctype_epoch != __get_locale()->ctype_epoch) { \
			UNDEFINED("LC_CTYPE has changed since last intermediate use of %s", #__m); \
		} \
		if (_m->dir == WTOMB && __d == MBTOW) { \
			UNDEFINED("%s is tracking wide to multi-byte conversion", #__m); \
		} \
		if (_m->dir == MBTOW && __d == WTOMB) { \
			UNDEFINED("%s is tracking multi-byte to wide conversion", #__m); \
		} \
		if (_m->dir == MBTOW && _m->mbs != (const char *) __s) { \
			UNDEFINED("%s is tracking a different multi-byte string", #__m); \
		} \
		if (_m->dir == WTOMB && _m->wcs != (const wchar_t *) __w) { \
			UNDEFINED("%s is tracking a different wide character string", #__m); \
		} \
	} \
} while (0)
#else
#define ASSERT_MBSTATE(__m, __d, __s, __w) (void)(__m)
#endif

#endif
