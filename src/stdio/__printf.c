#include <ctype.h>
#include <limits.h>
#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>

#ifdef _POSIX_SOURCE
#include <sys/types.h>
#include <unistd.h>
#endif

#include "_forced/strtoumax.h"
#include "_forced/strdup.h"

#include "_stdio.h"

#define NUMBUFLEN 64

static int __output(struct io_options *opt, struct io_conversion *conv, const char *str, size_t len)
{
	size_t olen = strlen(str);
	if (len == 0) {
		len = olen;
	}

	if (conv && olen < conv->width && (conv->flags & F_WIDTH) && !(conv->flags & F_LEFT)) {
		for (size_t i = 0; i < conv->width - olen; i++) {
			__output(opt, NULL, " ", 1);
		}
	}
	
	for (size_t i = 0; i < len && str[i] != '\0'; i++) {
		if (opt->ret == INT_MAX) {
			UNDEFINED("In call to %s(): Attempting to output more than INT_MAX characters", opt->fnname);
		}
		if (opt->stream) {
			fputc(str[i], opt->stream);
		} else if (opt->string) {
			if ((size_t)opt->ret < opt->maxlen) {
				opt->string[opt->ret] = str[i];
			}
		} else {
			/* file descriptor */
		}
		opt->ret++;
	}

	if (conv && olen < conv->width && (conv->flags & F_WIDTH) && (conv->flags & F_LEFT)) {
		for (size_t i = 0; i < conv->width - olen; i++) {
			__output(opt, NULL, " ", 1);
		}
	}

	return 0;
}

static void __utos(char *s, uintmax_t n, enum conversion_flags flags, int precision, int base)
{
	char digits[] = "0123456789abcdef";
	char sign = '+';
	char buf[NUMBUFLEN + 1]; 
	char *out = buf + NUMBUFLEN;
	if (flags & F_UPPER && base > 10) {
		size_t i;
		for (i = 0; i < sizeof(digits); i++) {
			digits[i] = (char)toupper(digits[i]);
		}
	}
	*out = '\0';
	out--;
	if (n == 0) {
		*out = '0';
		out--;
	}
	while (n > 0) {
		precision--;
		*out = digits[n % base];
		n /= base;
		out--;
	}
	/* TODO: this has a risk of overflowing */
	while (precision > 0 && (flags & (F_ZERO | F_PRECISION))) {
		*out = '0';
		precision--;
		out--;
	}
	if (flags & F_SIGN) {
		*out = sign;
		out--;
	}
	out++;
	while ((*s++ = *out++) != 0) {
		continue;
	}
}

static void __itos(char *s, intmax_t n, enum conversion_flags flags, int precision, int base)
{
	uintmax_t absn = (uintmax_t)imaxabs(n);
	__utos(s, absn, flags | ((n < 0) ? F_SIGN : 0), precision, base);

	if (n < 0) {
		char *sign = strrchr(s, '+');
		*sign = '-';
	}
}

int __printf(struct io_options *opt, const char * format, va_list arg)
{
	int nout = 0;

	intmax_t argint = 0;
	uintmax_t arguns = 0;
	void *argptr = NULL;
	char numbuf[NUMBUFLEN];

	size_t i;
	//char *s = NULL;

	if (opt->stream) {
		flockfile(opt->stream);
	}

	for (i = 0; format[i] != 0; i++) {
		struct io_conversion conv = {
			.func = opt->fnname,
			.dir = IO_OUT,
		};
		int base = 10;

		if (format[i] != '%') {
			size_t prev = i;
			while (format[i] != '\0' && format[i] != '%') {
				i++;
			}
			__output(opt, NULL, format + prev, i - prev);
			i--;
			continue;
		}

		i += __conv(format + i, &conv, arg);

		switch (conv.spec) {
		case 'o':	/* unsigned int */
		case 'u':
		case 'x':
		case 'X':
			switch (conv.length) {
			case L_hh:	arguns = (unsigned char)va_arg(arg, unsigned int); break;
			case L_h:	arguns = (unsigned short int)va_arg(arg, unsigned int); break;
			case L_l:	arguns = va_arg(arg, unsigned long int); break;

			#if defined __STDC_VERSION__ && 199901L <= __STDC_VERSION__
			case L_ll:	arguns = va_arg(arg, unsigned long long int); break;
			#endif

			case L_j:	arguns = va_arg(arg, uintmax_t); break;
			case L_z:	arguns = va_arg(arg, size_t); break;
			case L_t:	arguns = va_arg(arg, ptrdiff_t); break;

			default:	arguns = va_arg(arg, unsigned int); break;
			}
			if (conv.spec == 'o') {
				base = 8;
			} else if (conv.spec == 'x' || conv.spec == 'X') {
				base = 16;
			}
			__utos(numbuf, arguns, conv.flags, conv.precision, base);
			__output(opt, &conv, numbuf, 0);
			break;

		case 'd':	/* int */
		case 'i':
			switch (conv.length) {
			case L_hh:	argint = (signed char)va_arg(arg, int); break;
			case L_h:	argint = (short int)va_arg(arg, int); break;
			case L_l:	argint = va_arg(arg, long int); break;

			#if defined __STDC_VERSION__ && 199901L <= __STDC_VERSION__
			case L_ll:	argint = va_arg(arg, long long int); break;
			#endif

			case L_j:	argint = va_arg(arg, intmax_t); break;
			case L_z:	argint = va_arg(arg, size_t); break;
			case L_t:	argint = va_arg(arg, ptrdiff_t); break;

			default:	argint = va_arg(arg, int); break;
			}
			__itos(numbuf, argint, conv.flags, conv.precision, 10);
			__output(opt, &conv, numbuf, 0);
			break;


		case 'f':	/* double [-]ddd.ddd */
		case 'F':
			/* fcvt */
			break;

		case 'e':	/* double [-]d.ddde+/-dd */
		case 'E':
			/* ecvt */
			break;

		case 'g':	/* double f or e see docs */
		case 'G':
			/* gcvt */
			break;

		case 'a':	/* double as hex */
		case 'A':
			break;

		case 'c':	/* char */
			if (conv.length == L_default) {
				char c = va_arg(arg, int);
				__output(opt, &conv, &c, 1);
				nout++;
			} else if (conv.length == L_l) {
				#if defined __STDC_VERSION__
				wint_t wc = va_arg(arg, wint_t);
				char mb[MB_CUR_MAX + 1];
				mb[0] = 'W'; mb[1] = 'C'; mb[2] = '\0';
				wctomb(mb, wc);
				__output(opt, &conv, mb, 0);
				#endif
			}
			break;

		case 's':	/* string */
			if (conv.length == L_default) {
				char *string = va_arg(arg, char *);
				__output(opt, &conv, string, 0);
			} else if (conv.length == L_l) {
				#if defined __STDC_VERSION__
				wchar_t *ws = va_arg(arg, wchar_t *);
				char *mbs = malloc(wcslen(ws) * MB_CUR_MAX + 1);
				wcstombs(mbs, ws, wcslen(ws) * MB_CUR_MAX + 1);
				__output(opt, &conv, mbs, 0);
				free(mbs);
				#endif
			}

			break;

		case 'p':	/* pointer */
			argptr = va_arg(arg, void *);
			__itos(numbuf, (intptr_t)argptr, F_ALT | F_ZERO, sizeof(argptr) * 2, 16);
			__output(opt, &conv, numbuf, 0);
			ADD_PREV_STRING(numbuf, __stdio_h.formatted_pointers, __stdio_h.nformatted_pointers);
			break;

		case 'n':	/* write-back */
			switch (conv.length) {
			case L_hh:
				signed char *sc = va_arg(arg, signed char *);
				*sc = nout;
				break;
			case L_h:
				short int *si = va_arg(arg, short int *);
				*si = nout;
				break;
			case L_l:
				long int *li = va_arg(arg, long int *);
				*li = nout;
				break;
			case L_ll:
				long long int *lli = va_arg(arg, long long int *);
				*lli = nout;
				break;
			case L_j:
				intmax_t *im = va_arg(arg, intmax_t *);
				*im = nout;
				break;
			case L_z:
				size_t *sz = va_arg(arg, size_t *);
				*sz = nout;
				break;
			case L_t:
				ptrdiff_t *pd = va_arg(arg, ptrdiff_t *);
				*pd = nout;
				break;
			default:
				int *ip = va_arg(arg, int *);
				*ip = nout;
				break;
			}
			break;

		case '%':	/* literal '%' */
			__output(opt, &conv, "%", 1);
			break;

		default:	/* undefined */
			UNDEFINED("In call to %s(): Unknown conversion specifier %%%c", opt->fnname, format[i]);
		}
	}

	if (opt->stream) {
		funlockfile(opt->stream);
	}

	return opt->ret;
}

/*
STDC(0)
SIGNAL_SAFE(0)
*/
