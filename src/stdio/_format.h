#ifndef __STDIO__FORMAT_H__
#define __STDIO__FORMAT_H__

#include <inttypes.h>
#include <stddef.h>
#include <stdarg.h>
#include <stdio.h>
#include "_stdio.h"
#include "_safety.h"

#define UNDEFINED_FMT(__conv, __fmt, ...) do { \
	char __buf[128]; \
	snprintf(__buf, sizeof(__buf), "In call to %s() with format string \"%s\": Invalid conversion specification: ", __conv->func, __conv->fmt); \
	__undefined("%s" __fmt, __buf, __VA_ARGS__); \
} while (0)

struct io_options {
	const char *fnname;	/* the calling function */
	char *string;		/* NULL or the output string */
	wchar_t *wstring;	/* NULL or the output wide string */
	FILE *stream;		/* NULL or the output stream */
	int fd;			/* -1 or the output file descriptor */
	size_t maxlen;		/* max number of bytes to write to string */
	size_t pos;		/* current index in string */
	int ret;		/* return value */
};

struct io_conversion {
	const char *func;
	const char *fmt;
	enum { IO_IN, IO_OUT } dir;
	enum conversion_flags {
		/* explicit */
		F_STAR = (1<<0),
		F_LEFT = (1<<1),
		F_SIGN = (1<<2),
		F_SPACE = (1<<3),
		F_ALT = (1<<4),
		F_ZERO = (1<<5),

		/* inferred */
		F_UPPER = (1<<10),
		F_WIDTH = (1<<11),
		F_PRECISION = (1<<12),
	} flags;
	enum conversion_length {
		L_default,
		L_hh,
		L_ll,
		L_h,
		L_l,
		L_j,
		L_z,
		L_t,
		L_L,
	} length;
	uintmax_t width;
	uintmax_t precision;
	char spec;
	union {
		uintmax_t u;
		intmax_t i;
		float f;
		double d;
		long double ld;
		char *s;
		wchar_t *wcs;
		char c;
		wchar_t wc;
		void *ptr;
	} val;
};

size_t __conv(const char *, struct io_conversion *, va_list);
int __printf(struct io_options * restrict, const char * restrict, va_list);
int __scanf(struct io_options * restrict, const char * restrict, va_list);

/*
STDC(-1)
*/

#endif
