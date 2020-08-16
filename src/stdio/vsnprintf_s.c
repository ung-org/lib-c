#include "internal_vsnprintf.c"
#include <inttypes.h>

int vsnprintf_s(char * restrict s, rsize_t n, const char * restrict format, va_list arg)
{
	__C_EXT(1, 201112L);
	int nout = 0;

	intmax_t argint = 0;
	void *argptr = NULL;
	char numbuf[NUMBUFLEN];

	for (size_t i = 0; format[i] != 0; i++) {
		if (format[i] != '%') {
			if (nout < (int)n) {
				s[nout] = format[i];
			}
			nout++;
			continue;
		}

		//__asm int 3;
		// zero of more flags "-+ #0"
		// optional width "*" or decimal integer
		// optional precision ".*" or ".[decimal]"
		// optional length modifier "hh", "h", "l", "ll", "j",
		//	"z", "t", "L"
		// conversion specifier "diouxXfFeEgGaAcspn%"
		int flags = 0;
		uintmax_t width = 0;
		int step = 0;
		int precision = 0;
		int base = 10;
		enum { def, hh, h, l, ll, j, z, t, L } length = def;

		while (step == 0) {
			i++;
			switch (format[i]) {
			case '-':	flags |= LEFT; break;
			case '+':	flags |= SIGN; break;
			case ' ':	flags |= SPACE; break;
			case '#':	flags |= ALT; break;
			case '0':	flags |= ZERO; break;
			default:	step = 1; break;
			}
		}

		if (format[i] == '*') {
			i++;
		} else if (isdigit(format[i])) {
			char *end;
			width = strtoumax(format + i, &end, 10);
			i = end - format;
		}

		if (format[i] == '.') {
			i++;
			if (format[i] == '*') {
				i++;
			} else if (isdigit(format[i])) {
				char *end;
				precision = (int)strtoumax(format + i, &end, 10);
				i = end - format;
			} else {
				// invalid precision
				return -nout;
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

		switch (format[i]) {
		case 'o':	// unsigned int
		case 'u':
		case 'x':
		case 'X':
			flags |= UNSIGNED;

		case 'd':	// int
		case 'i':
			switch (length) {
			case hh:	argint = (signed char)va_arg(arg, int); break;
			case h:		argint = (short int)va_arg(arg, int); break;
			case l:		argint = va_arg(arg, long int); break;
			case ll:	argint = va_arg(arg, long long int); break;
			case j:		argint = va_arg(arg, intmax_t); break;
			case z:		argint = va_arg(arg, size_t); break;
			case t:		argint = va_arg(arg, ptrdiff_t); break;
			case L:		return -nout;
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
			itos(numbuf, (long int)argint, flags, precision, base);
			nout = append(s, numbuf, nout, n);
			break;


		case 'f':	// double [-]ddd.ddd
		case 'F':
			break;

		case 'e':	// double [-]d.ddde+/-dd
		case 'E':
			break;

		case 'g':	// double f or e see docs
		case 'G':
			break;

		case 'a':	// double as hex
		case 'A':
			break;

		case 'c':	// char
			if (length == def) {
				char c = va_arg(arg, int);
				if (nout < (int)n) {
					s[nout] = c;
				}
				nout++;
			} else if (length == l) {
				//wint_t wc = va_arg(arg, wint_t);
				//char mb[MB_CUR_MAX + 1] = "WC";
				//wctomb(mb, wc);
				//nout = append(s, mb, nout, n);
			} else {
				return -nout;
			}
			break;

		case 's':	// string
			if (length == def) {
				char *string = va_arg(arg, char *);
				nout = append(s, string, nout, n);
			} else if (length == l) {
				//wchar_t *ws = va_arg(arg, wchar_t *);
				//char *mbs = malloc(wcslen(ws) * MB_CUR_MAX + 1);
				//wcstombs(mbs, ws, wcslen(ws) * MB_CUR_MAX + 1);
				//nout = append(s, mbs, nout, n);
				//free(mbs);
				nout = append(s, "WIDE STRING", nout, n);
			} else {
				return -nout;
			}

			break;

		case 'p':	// pointer
			argptr = va_arg(arg, void *);
			nout = append(s, "0x", nout, n);
			itos(numbuf, (intptr_t)argptr, ZERO, sizeof(argptr) * 2, 16);
			nout = append(s, numbuf, nout, n);
			break;

		case 'n':	// write-back
			break;

		case '%':	// literal '%'
			if (nout < (int)n) {
				s[nout] = '%';
			}
			nout++;
			break;

		default:	// undefined
			return -nout;
		}
	}

	return nout;
}

/*
CEXT1(201112)
*/
