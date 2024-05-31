#include <ctype.h>
#include <inttypes.h>
#include <limits.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "_stdio.h"
#include "_safety.h"

#pragma GCC diagnostic ignored "-Wint-conversion"
#pragma GCC diagnostic ignored "-Wtype-limits"

#define ASSIGN(__t, __arg_list, __val, __min, __max) do { \
		if ((__min != 0 && (__val) < (__min)) || (__val) > (__max)) { \
			UNDEFINED("Assignment to %s would overflow", #__t); \
		} \
		__t *__ptr = va_arg(__arg_list, __t *); \
		if (__ptr == NULL) { \
			UNDEFINED("Passed NULL for input conversion"); \
		} \
		*__ptr = (__t)(__val); \
	} while (0)

static int __unget(struct io_options *opt, int c)
{
	if (opt->stream) {
		return ungetc(c, opt->stream);
	}
	opt->pos--;
	return c;
}

static int __get(struct io_options *opt)
{
	if (opt->stream) {
		return fgetc(opt->stream);
	}
	return opt->string[opt->pos++];
}

GCC_SSE_HACK
static uintmax_t __get_uint(struct io_options *opt, char basec)
{
	char buf[BUFSIZ] = {0};
	size_t pos = 0;
	int base = 10;
	char *end = NULL;
	if (basec == 'o') {
		base = 8;
	} else if (basec == 'x' || basec == 'X') {
		base = 16;
	}

	if (opt->string) {
		uintmax_t ret = strtoumax(opt->string + opt->pos, &end, base);
		opt->pos += (size_t)(end - (opt->string + opt->pos));
		return ret;
	}

	/* TODO: skip whitespace */
	while (1) {
		int c = __get(opt);
		if (c == EOF) {
			buf[pos] = '\0';
			break;
		}
		buf[pos++] = c;
		end = NULL;
		strtoumax(buf, &end, base);
		if (end && *end) {
			break;
		}
	}

	end = NULL;
	uintmax_t ret = strtoumax(buf, &end, base);
	__unget(opt, *end);
	return ret;
}

GCC_SSE_HACK
static intmax_t __get_int(struct io_options *opt, char basec)
{
	char buf[BUFSIZ] = {0};
	size_t pos = 0;
	int base = 0;
	char *end = NULL;
	if (basec == 'd') {
		base = 10;
	}

	if (opt->string) {
		intmax_t ret = strtoimax(opt->string + opt->pos, &end, base);
		opt->pos += (size_t)(end - (opt->string + opt->pos));
		return ret;
	}

	/* TODO: skip whitespace */
	while (1) {
		int c = __get(opt);
		if (c == EOF) {
			buf[pos] = '\0';
			break;
		}
		buf[pos++] = c;
		strtoimax(buf, &end, base);
		if (end && *end) {
			break;
		}
	}

	intmax_t ret = strtoimax(buf, &end, base);
	__unget(opt, *end);
	return ret;
}

int __scanf(struct io_options *opt, const char * format, va_list arg)
{
	int ret = 0;

	SIGNAL_SAFE(0);

	if (opt->string) {
		opt->pos = 0;
	}

	while (*format) {
		struct io_conversion conv = { .dir = IO_IN };

		if (isspace(*format)) {
			int c = 0;

			while (isspace(*format)) {
				format++;
			}

			while ((c = __get(opt)) != EOF) {
				if (!isspace(c)) {
					__unget(opt, c);
					break;
				}
			}

			format++;
			continue;
		}

		if (*format != '%') {
			int c = __get(opt);
			if (c == *format) {
				format++;
				continue;
			}
			__unget(opt, c);
			break;
		}

		format += __conv(format, &conv);

		switch (conv.spec) {
		case 'd':	/* base 10 int */
		case 'i':	/* unknown base int */
			intmax_t i = __get_int(opt, conv.spec);
			switch (conv.length) {
			case L_hh:	ASSIGN(signed char, arg, i, SCHAR_MIN, SCHAR_MAX); break;
			case L_h:	ASSIGN(short int, arg, i, SHRT_MIN, SHRT_MAX); break;
			case L_l:	ASSIGN(long int, arg, i, LONG_MIN, LONG_MAX); break;
			case L_ll:	ASSIGN(long long int, arg, i, LLONG_MIN, LLONG_MAX); break;
			case L_j:	ASSIGN(intmax_t, arg, i, INTMAX_MIN, INTMAX_MAX); break;
			//case L_z:	ASSIGN(signed size_t, arg, i, 0, 0); break; /* TODO!!! */
			//case L_t:	ASSIGN(signed ptrdiff_t, arg, i, 0, 0); break; /* TODO!!! */
			default:	ASSIGN(int, arg, i, INT_MIN, INT_MAX); break;

			/* case L_L: UNDEFINED(""); break; */
			}
			break;

		case 'o':	/* base 8 unsigned */
		case 'u':	/* base 10 unsigned */
		case 'x':	/* base 16 unsigned */
		case 'X':	/* base 16 unsigned */
			uintmax_t u = __get_uint(opt, conv.spec);
			switch (conv.length) {
			case L_hh:	ASSIGN(unsigned char, arg, u, 0, UCHAR_MAX); break;
			case L_h:	ASSIGN(unsigned short int, arg, u, 0, USHRT_MAX); break;
			case L_l:	ASSIGN(unsigned long int, arg, u, 0, ULONG_MAX); break;
			case L_ll:	ASSIGN(unsigned long long int, arg, u, 0, ULLONG_MAX); break;
			case L_j:	ASSIGN(uintmax_t, arg, u, 0, UINTMAX_MAX); break;
			case L_z:	ASSIGN(size_t, arg, u, 0, SIZE_MAX); break;
			case L_t:	ASSIGN(ptrdiff_t, arg, u, 0, PTRDIFF_MAX); break;
			default:	ASSIGN(unsigned int, arg, u, 0, UINT_MAX); break;

			/* case L_L: UNDEFINED(""); break; */
			}
			break;

		case 'a':
		case 'A':
		case 'e':
		case 'E':
		case 'f':
		case 'F':
		case 'g':
		case 'G':
			if (conv.length == L_L) {
				/*
				long double *ld = va_arg(arg, long double *);
				*ld = strtold(opt->string, NULL);
				*/
			} else {
				/*
				double *d = va_arg(arg, double *);
				*d = strtod(opt->string, NULL);
				*/
			}
			break;

		case 'c':
			/* width (default 1) characters */
			if (conv.has_width == 0) {
				conv.width = 1;
			}
			break;

		case 's':
			if (conv.length != L_default && conv.length != L_l) {
				//__bad_length(length, 's');
			}

			char *str = va_arg(arg, char *);

			/* TODO: only use widht if conv.has_width == 1 */
			for (uintmax_t i = 0; i < conv.width; i++) {
				int c = __get(opt);
				if (isspace(c)) {
					__unget(opt, c);
					break;
				}
				if ((conv.flags & F_STAR) != F_STAR) {
					str[i] = c;
				}
			}
			break;

		case '[':
			/* scanset */

		case 'p':
			/* previous printf("%p"); */

		case 'n':
			/* output a number */

		case '%':
			/* match % literal */
			break;

		default:
			UNDEFINED("Unknown conversion specifier '%c'", *format);
			break;
		}

		format++;
	}

	(void)arg;
	return ret;
}

/*
STDC(0)
*/
