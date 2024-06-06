#include <inttypes.h>
#include <ctype.h>
#include <string.h>
#include "_stdio.h"

static char *length_names[] = {
	[L_hh] = "hh",
	[L_ll] = "ll",
	[L_h] = "h",
	[L_l] = "l",
	[L_j] = "j",
	[L_z] = "z",
	[L_t] = "t",
	[L_L] = "L",
};

size_t __conv(const char *format, struct io_conversion *conv, va_list arg)
{
	size_t ret = 0;

	if (format[0] != '%') {
		return 0;
	}

	ret++;

	conv->flags = 0;
	conv->length = L_default;

	while (strchr("*-+ #0", format[ret])) {
		switch (format[ret]) {
		case '*':	conv->flags |= F_STAR; break;
		case '-':	conv->flags |= F_LEFT; break;
		case '+':	conv->flags |= F_SIGN; break;
		case ' ':	conv->flags |= F_SPACE; break;
		case '#':	conv->flags |= F_ALT; break;
		case '0':	conv->flags |= F_ZERO; break;
		}

		if (conv->dir == IO_IN) {
			if ((conv->flags & ~(F_STAR)) != 0) {
				UNDEFINED("Flag '%c' is not valid for formatted input", format[ret]);
			}
		} else {
			if (conv->flags & F_STAR) {
				int width = va_arg(arg, int);
				conv->flags |= F_WIDTH;
				if (width < 0) {
					conv->flags |= F_LEFT;
					conv->width = -width;
				} else {
					conv->width = width;
				}
			}
		}

		ret++;
	}

	if (isdigit(format[ret])) {
		char *end = NULL;
		conv->flags |= F_WIDTH;
		conv->width = strtoumax(format + ret, &end, 10);
		ret += (size_t)(end - (format + ret));
	}

	if (format[ret] == '.') {
		if (conv->dir == IO_IN) {
			UNDEFINED("Precision is not supported for formatted input");
		}
		conv->flags |= F_PRECISION;
		ret++;
		if (format[ret] == '*') {
			int prec = va_arg(arg, int);
			if (prec > 0) {
				conv->precision = prec;
			} else {
				conv->flags &= ~(F_PRECISION);
			}
		} else {
			char *end = NULL;
			conv->precision = strtoumax(format + ret, &end, 10);
			ret += (size_t)(end - (format + ret));
		}
	}

	for (size_t i = 0; i < sizeof(length_names) / sizeof(length_names[0]); i++) {
		if (length_names[i] && strncmp(length_names[i], format + ret, strlen(length_names[i])) == 0) {
			conv->length = (enum conversion_length)i;
			ret += strlen(length_names[i]);
			break;
		}
	}

	conv->spec = format[ret];
	if (isupper(conv->spec)) {
		conv->flags |= F_UPPER;
	}

	switch (conv->spec) {
	case 'd':
	case 'i':
		if (conv->length == L_L) {
			UNDEFINED("In call to %s(): Length '%s' is not supported with conversion specifier '%c'", conv->func, length_names[conv->length], conv->spec);
		}
		break;

	case 'o':
	case 'u':
	case 'x':
	case 'X':
		if (conv->length == L_L) {
			UNDEFINED("In call to %s(): Length '%s' is not supported with conversion specifier '%c'", conv->func, length_names[conv->length], conv->spec);
		}
		break;

	case 'f':
	case 'F':
	case 'e':
	case 'E':
	case 'g':
	case 'G':
	case 'a':
	case 'A':
		if (conv->length != L_L && conv->length) {
			UNDEFINED("In call to %s(): Length '%s' is not supported with conversion specifier '%c'", conv->func, length_names[conv->length], conv->spec);
		}
		break;

	case 'c':
		if (conv->flags & F_PRECISION) {
			UNDEFINED("In call to %s(): Precision is not supported with conversion specifier '%c'", conv->func, conv->spec);
		}
		/* FALLTHRU */

	case 's':
	case '[':
		if (conv->length != L_l && conv->length) {
			UNDEFINED("In call to %s(): Length '%s' is not supported with conversion specifier '%c'", conv->func, length_names[conv->length], conv->spec);
		}
		break;

	case 'p':
	case 'n':
	case '%':
		if (conv->flags & F_WIDTH) {
			UNDEFINED("In call to %s(): Field width is not supported with conversion specififier '%c'", conv->func, conv->spec);
		}
		if (conv->flags & F_PRECISION) {
			UNDEFINED("In call to %s(): Precision is not supported with conversion specififier '%c'", conv->func, conv->spec);
		}
		if (conv->flags) {
			UNDEFINED("In call to %s(): Flags are not supported with conversion specifier '%c'", conv->func, conv->spec);
		}
		if (conv->length) {
			UNDEFINED("In call to %s(): Length '%s' is not supported with conversion specifier '%c'", conv->func, length_names[conv->length], conv->spec);
		}
		break;

	default:
		UNDEFINED("In call to %s(): Unknown conversion specifier '%c'", conv->func, conv->spec);
	}

	return ret;
}
