#include <limits.h>
#include <stdio.h>
#include <stddef.h>
#include <string.h>
#include <wchar.h>

#ifdef _POSIX_SOURCE
#include <sys/types.h>
#include <unistd.h>
#endif

#include "_forced/strdup.h"
#include "_stdio.h"

#define NUMBUFLEN 64

static void __output(struct io_options *opt, struct io_conversion *conv, const char *str, size_t len)
{
	static char pad[BUFSIZ] = "";
	size_t olen = strlen(str);
	if (len == 0) {
		len = olen;
	}

	if (pad[0] == '\0') {
		memset(pad, ' ', sizeof(pad));
	}

	if (conv && (conv->flags & F_WIDTH)) {
		if (conv->width < olen) {
			conv->width = 0;
		} else {
			conv->width -= olen;
		}
	}

	if (conv && (conv->flags & F_WIDTH) && !(conv->flags & F_LEFT)) {
		while (conv->width > 0) {
			__output(opt, NULL, pad, conv->width % BUFSIZ);
			conv->width -= conv->width % BUFSIZ;
		}
	}

	if (len > INT_MAX || opt->ret > INT_MAX - (int)len) {
		UNDEFINED("In call to %s(): Attempting to output more than INT_MAX characters", opt->fnname);
	}
	
	/* TODO: check for errors */
	if (opt->stream) {
		opt->ret += fwrite(str, 1, len, opt->stream);
	} else if (opt->string) {
		memcpy(opt->string + opt->ret, str, len);
		opt->ret += len;
	#ifdef _POSIX_SOURCE
	} else {
		opt->ret += write(opt->fd, str, len);
	#endif
	}

	if (conv && (conv->flags & F_WIDTH) && (conv->flags & F_LEFT)) {
		while (conv->width > 0) {
			__output(opt, NULL, pad, conv->width % BUFSIZ);
			conv->width -= conv->width % BUFSIZ;
		}
	}
}

static void __utos(char *s, uintmax_t n, enum conversion_flags flags, int precision, int base)
{
	char lower[] = "0123456789abcdef";
	char upper[] = "0123456789ABCDEF";
	char *digits = (flags & F_UPPER ? upper : lower);
	char sign = '+';
	char buf[NUMBUFLEN + 1]; 
	char *out = buf + NUMBUFLEN;

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
	char numbuf[NUMBUFLEN];

	if (opt->stream) {
		flockfile(opt->stream);
	}

	for (size_t i = 0; format[i] != 0; i++) {
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
			case L_hh:	conv.val.u = (unsigned char)va_arg(arg, unsigned int); break;
			case L_h:	conv.val.u = (unsigned short int)va_arg(arg, unsigned int); break;
			case L_l:	conv.val.u = va_arg(arg, unsigned long int); break;

			#if defined __STDC_VERSION__ && 199901L <= __STDC_VERSION__
			case L_ll:	conv.val.u = va_arg(arg, unsigned long long int); break;
			#endif

			case L_j:	conv.val.u = va_arg(arg, uintmax_t); break;
			case L_z:	conv.val.u = va_arg(arg, size_t); break;
			case L_t:	conv.val.u = va_arg(arg, ptrdiff_t); break;

			default:	conv.val.u = va_arg(arg, unsigned int); break;
			}
			if (conv.spec == 'o') {
				base = 8;
			} else if (conv.spec == 'x' || conv.spec == 'X') {
				base = 16;
			}
			__utos(numbuf, conv.val.u, conv.flags, conv.precision, base);
			__output(opt, &conv, numbuf, 0);
			break;

		case 'd':	/* int */
		case 'i':
			switch (conv.length) {
			case L_hh:	conv.val.i = (signed char)va_arg(arg, int); break;
			case L_h:	conv.val.i = (short int)va_arg(arg, int); break;
			case L_l:	conv.val.i = va_arg(arg, long int); break;

			#if defined __STDC_VERSION__ && 199901L <= __STDC_VERSION__
			case L_ll:	conv.val.i = va_arg(arg, long long int); break;
			#endif

			case L_j:	conv.val.i = va_arg(arg, intmax_t); break;
			case L_z:	conv.val.i = va_arg(arg, size_t); break;
			case L_t:	conv.val.i = va_arg(arg, ptrdiff_t); break;

			default:	conv.val.i = va_arg(arg, int); break;
			}
			__itos(numbuf, conv.val.i, conv.flags, conv.precision, 10);
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
			conv.val.ptr = va_arg(arg, void *);
			__itos(numbuf, (intptr_t)conv.val.ptr, F_ALT | F_ZERO, sizeof(conv.val.ptr) * 2, 16);
			__output(opt, &conv, numbuf, 0);
			ADD_PREV_STRING(numbuf, __stdio_h.formatted_pointers, __stdio_h.nformatted_pointers);
			break;

		case 'n':	/* write-back */
			switch (conv.length) {
			case L_hh:
				signed char *sc = va_arg(arg, signed char *);
				*sc = opt->ret;
				break;
			case L_h:
				short int *si = va_arg(arg, short int *);
				*si = opt->ret;
				break;
			case L_l:
				long int *li = va_arg(arg, long int *);
				*li = opt->ret;
				break;
			case L_ll:
				long long int *lli = va_arg(arg, long long int *);
				*lli = opt->ret;
				break;
			case L_j:
				intmax_t *im = va_arg(arg, intmax_t *);
				*im = opt->ret;
				break;
			case L_z:
				size_t *sz = va_arg(arg, size_t *);
				*sz = opt->ret;
				break;
			case L_t:
				ptrdiff_t *pd = va_arg(arg, ptrdiff_t *);
				*pd = opt->ret;
				break;
			default:
				int *ip = va_arg(arg, int *);
				*ip = opt->ret;
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
