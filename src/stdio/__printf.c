#include <ctype.h>
#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>

#ifdef _POSIX_SOURCE
#include <sys/types.h>
#include <unistd.h>
#endif

#if __STDC_VERSION__ >= 199901L
#include <inttypes.h>
#else
#include "stdint/intmax_t.h"
#include "stdint/uintmax_t.h"
#include "stdint/intptr_t.h"
#include "stdint/UINTMAX_MAX.h"
#define strtoumax __strtoumax
#include "inttypes/strtoumax.c"
#endif

#include "_stdio.h"

#define NUMBUFLEN 64

#define LEFT (1 << 0)
#define SIGN (1 << 1)
#define SPACE (1 << 2)
#define ALT (1 << 3)
#define ZERO (1 << 4)
#define UPPER (1 << 5)
#define UNSIGNED (1 << 6)

#define FLAG (1 << 0)
#define WIDTH (1 << 1)
#define PRECISION (1 << 2)
#define LENGTH (1 << 3)

static int __append(char *s, char *argstring, int nout, size_t n)
{
	s += nout;
	while (*argstring) {
		if (nout < (int)n) {
			*s++ = *argstring;
		}
		nout++;
		argstring++;
	}
	return nout;
}

static void __itos(char *s, intmax_t n, int flags, int precision, int base)
{
	extern int toupper(int);
	char digits[] = "0123456789abcdef";
	char sign = n < 0 ? '-' : '+';
	char buf[NUMBUFLEN + 1]; 
	char *out = buf + NUMBUFLEN;
	if (flags & UPPER && base > 10) {
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
	if (flags & SIGN || sign == '-') {
		*out = sign;
		out--;
	}
	out++;
	while ((*s++ = *out++) != 0) {
		continue;
	}
}

int (__printf)(struct io_options *opt, const char * format, va_list arg)
{
	char buf[BUFSIZ];
	int nout = 0;

	intmax_t argint = 0;
	void *argptr = NULL;
	char numbuf[NUMBUFLEN];

	size_t i;
	size_t n = 0;
	char *s = NULL;

	if (opt->stream) {
		/* file based */
		s = buf;
		n = BUFSIZ;
		flockfile(opt->stream);
	} else if (opt->string) {
		/* memory buffer */
		s = opt->string;
		n = opt->maxlen;
	} else {
		/* file descriptor */
		s = buf;
		n = BUFSIZ;
	}

	for (i = 0; format[i] != 0; i++) {
		/*
		// zero of more flags "-+ #0"
		// optional width "*" or decimal integer
		// optional precision ".*" or ".[decimal]"
		// optional length modifier "hh", "h", "l", "ll", "j",
		//	"z", "t", "L"
		// conversion specifier "diouxXfFeEgGaAcspn%"
		*/
		unsigned int flags = 0;
		uintmax_t width = 0;
		int step = 0;
		int precision = 0;
		int base = 10;
		unsigned int specified = 0;
		enum { def, hh, h, l, ll, j, z, t, L } length = def;

		if (format[i] != '%') {
			if (nout < (int)n) {
				s[nout] = format[i];
			}
			nout++;
			continue;
		}

		while (step == 0) {
			i++;
			switch (format[i]) {
			case '-':	flags |= LEFT; specified |= FLAG; break;
			case '+':	flags |= SIGN; specified |= FLAG; break;
			case ' ':	flags |= SPACE; specified |= FLAG; break;
			case '#':	flags |= ALT; specified |= FLAG; break;
			case '0':	flags |= ZERO; specified |= FLAG; break;
			default:	step = 1; break;
			}
		}

		if (format[i] == '*') {
			specified |= WIDTH;
			width = va_arg(arg, int);
			i++;
		} else if (isdigit(format[i])) {
			specified |= WIDTH;

			char *end;
			width = strtoumax(format + i, &end, 10);
			i = end - format;
		}
		(void)width; /* TODO!!!! */

		if (format[i] == '.') {
			specified |= PRECISION;

			i++;
			if (format[i] == '*') {
				i++;
			} else if (isdigit(format[i])) {
				char *end;
				precision = (int)strtoumax(format + i, &end, 10);
				i = end - format;
			} else {
				/* invalid precision */
				nout = -nout;
				goto end;
			}
		}

		if (format[i] == 'h') {
			i++;
			if (format[i] == 'h') {
				i++;
				length = hh;
			} else {
				length = h;
			}
		} else if (format[i] == 'l') {
			i++;
			if (format[i] == 'l') {
				i++;
				length = ll;
			} else {
				length = l;
			}
		} else if (format[i] == 'j') {
			i++;
			length = j;
		} else if (format[i] == 'z') {
			i++;
			length = z;
		} else if (format[i] == 't') {
			i++;
			length = t;
		} else if (format[i] == 'L') {
			i++;
			length = L;
		}

		if (isupper(format[i])) {
			flags |= UPPER;
		}

		if ((flags & ALT) && (!strchr("xXaAeEfFgG", format[i]))) {
			__undefined("In call to %s(): The '#' flag is undefined for %%%c", opt->fnname, format[i]);
		} else if ((flags & ZERO) && (!strchr("diouxXaAeEfFgG", format[i]))) {
			__undefined("In call to %s(): The '0' flag is undefined for %%%c", opt->fnname, format[i]);
		} else if ((length == hh) && (!strchr("diouxXn", format[i]))) {
			__undefined("In call to %s(): The length 'hh' is undefined for %%%c", opt->fnname, format[i]);
		} else if ((length == h) && (!strchr("diouxXn", format[i]))) {
			__undefined("In call to %s(): The length 'h' is undefined for %%%c", opt->fnname, format[i]);
		} else if ((length == l) && (!strchr("diouxXncsaAeEfFgG", format[i]))) {
			__undefined("In call to %s(): The length 'l' is undefined for %%%c", opt->fnname, format[i]);
		} else if ((length == ll) && (!strchr("diouxXn", format[i]))) {
			__undefined("In call to %s(): The length 'll' is undefined for %%%c", opt->fnname, format[i]);
		} else if ((length == j) && (!strchr("diouxXn", format[i]))) {
			__undefined("In call to %s(): The length 'j' is undefined for %%%c", opt->fnname, format[i]);
		} else if ((length == z) && (!strchr("diouxXn", format[i]))) {
			__undefined("In call to %s(): The length 'z' is undefined for %%%c", opt->fnname, format[i]);
		} else if ((length == t) && (!strchr("diouxXn", format[i]))) {
			__undefined("In call to %s(): The length 't' is undefined for %%%c", opt->fnname, format[i]);
		} else if ((length == L) && (!strchr("aAeEfFgG", format[i]))) {
			__undefined("In call to %s(): The length 'L' is undefined for %%%c", opt->fnname, format[i]);
		}

		switch (format[i]) {
		case 'o':	/* unsigned int */
		case 'u':
		case 'x':
		case 'X':
			flags |= UNSIGNED;
			/* FALLTHRU */

		case 'd':	/* int */
		case 'i':
			switch (length) {
			case hh:	argint = (signed char)va_arg(arg, int); break;
			case h:		argint = (short int)va_arg(arg, int); break;
			case l:		argint = va_arg(arg, long int); break;

			#if defined __STDC_VERSION__ && 199901L <= __STDC_VERSION__
			case ll:	argint = va_arg(arg, long long int); break;
			#endif

			case j:		argint = va_arg(arg, intmax_t); break;
			case z:		argint = va_arg(arg, size_t); break;
			case t:		argint = va_arg(arg, ptrdiff_t); break;
			case L:		nout = -nout; goto end;
			default:	argint = va_arg(arg, int); break;
			}
			if (format[i] == 'o') {
				base = 8;
			} else if (format[i] == 'x') {
				base = 16;
			} else if (format[i] == 'X') {
				base = 16;
				flags |= UPPER;
			} else {
				base = 10;
			}
			__itos(numbuf, (long int)argint, flags, precision, base);
			nout = __append(s, numbuf, nout, n);
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
			if (length == def) {
				char c = va_arg(arg, int);
				if (nout < (int)n) {
					s[nout] = c;
				}
				nout++;
			} else if (length == l) {
				#if defined __STDC_VERSION__
				wint_t wc = va_arg(arg, wint_t);
				char mb[MB_CUR_MAX + 1];
				mb[0] = 'W'; mb[1] = 'C'; mb[2] = '\0';
				wctomb(mb, wc);
				nout = __append(s, mb, nout, n);
				#else
				nout = __append(s, "NOSUP", nout, n);
				#endif
			} else {
				nout = -nout;
				goto end;
			}
			break;

		case 's':	/* string */
			if (length == def) {
				char *string = va_arg(arg, char *);
				nout = __append(s, string, nout, n);
			} else if (length == l) {
				#if defined __STDC_VERSION__
				wchar_t *ws = va_arg(arg, wchar_t *);
				char *mbs = malloc(wcslen(ws) * MB_CUR_MAX + 1);
				wcstombs(mbs, ws, wcslen(ws) * MB_CUR_MAX + 1);
				nout = __append(s, mbs, nout, n);
				free(mbs);
				#else
				nout = __append(s, "NOSUP", nout, n);
				#endif
			} else {
				nout = -nout;
				goto end;
			}

			break;

		case 'p':	/* pointer */
			argptr = va_arg(arg, void *);
			nout = __append(s, "0x", nout, n);
			__itos(numbuf, (intptr_t)argptr, ZERO, sizeof(argptr) * 2, 16);
			nout = __append(s, numbuf, nout, n);
			break;

		case 'n':	/* write-back */
			if (specified & FLAG) {
				__undefined("In call to %s(): Flags with %%n conversion", opt->fnname);
			} else if (specified & 0) {
				/* TODO: output suppression (might only be for input) */
			} else if (specified & WIDTH) {
				__undefined("In call to %s(): Width with %%n conversion", opt->fnname);
			} else if (specified & PRECISION) {
				__undefined("In call to %s(): Precision with %%n conversion", opt->fnname);
			}

			switch (length) {
			case def:
				int *ip = va_arg(arg, int *);
				*ip = nout;
				break;
			case hh:
				signed char *sc = va_arg(arg, signed char *);
				*sc = nout;
				break;
			case h:
				short int *si = va_arg(arg, short int *);
				*si = nout;
				break;
			case l:
				long int *li = va_arg(arg, long int *);
				*li = nout;
				break;
			case ll:
				long long int *lli = va_arg(arg, long long int *);
				*lli = nout;
				break;
			case j:
				intmax_t *im = va_arg(arg, intmax_t *);
				*im = nout;
				break;
			case z:
				size_t *sz = va_arg(arg, size_t *);
				*sz = nout;
				break;
			case t:
				ptrdiff_t *pd = va_arg(arg, ptrdiff_t *);
				*pd = nout;
				break;
			case L:
				__undefined("In call to %s(): Invalid length 'L' for %%n conversion", opt->fnname);
			}
			break;

		case '%':	/* literal '%' */
			if (nout < (int)n) {
				s[nout] = '%';
			}
			nout++;
			break;

		default:	/* undefined */
			__undefined("In call to %s(): Unknown conversion specifier %%%c", opt->fnname, format[i]);
		}
	}

	end:
	if (opt->stream) {
		fwrite(buf, 1, nout % BUFSIZ, opt->stream);
		funlockfile(opt->stream);
	#ifdef _POSIX_SOURCE
	} else if (opt->fd != -1) {
		write(opt->fd, buf, nout % BUFSIZ);
	#endif
	}

	return nout;
}

/*
STDC(0)
SIGNAL_SAFE(0)
*/
