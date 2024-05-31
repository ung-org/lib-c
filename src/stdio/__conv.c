#include <inttypes.h>
#include <ctype.h>
#include <string.h>
#include "_conversion.h"

/*
struct io_conversion {
	enum { IO_IN, IO_OUT } dir;
        enum {
                F_STAR = (1<<0),
                F_LEFT = (1<<1),
                F_SIGN = (1<<2),
                F_SPACE = (1<<3),
                F_ALT = (1<<4),
                F_ZERO = (1<<4),
        } flags;
        enum {
                L_default,
                L_hh,
                L_h,
                L_l,
                L_ll,
                L_j,
                L_z,
                L_t,
                L_L,
        } length;
        int has_width:1;
        int has_precision:1;
        uintmax_t width;
        uintmax_t precision;
        char spec;
};
*/

size_t __conv(const char *format, struct io_conversion *conv)
{
	size_t ret = 0;

	if (format[0] != '%') {
		return 0;
	}

	ret++;

	conv->flags = 0;
	conv->length = L_default;
	conv->has_width = 0;
	conv->has_precision = 0;

	while (strchr("*-+ #0", format[ret])) {
		switch (format[ret]) {
		case '*':	conv->flags |= F_STAR; break;
		case '-':	conv->flags |= F_LEFT; break;
		case '+':	conv->flags |= F_SIGN; break;
		case ' ':	conv->flags |= F_SPACE; break;
		case '#':	conv->flags |= F_ALT; break;
		case '0':	conv->flags |= F_ZERO; break;
		}
		/* check for invalid input flags (only * is allowed) */
		ret++;
	}

	if (isdigit(format[ret])) {
		char *end = NULL;
		conv->has_width = 1;
		conv->width = strtoumax(format + ret, &end, 10);
		ret += (size_t)(end - (format + ret));
	}

	/* TODO: precision */

	if (strchr("hljztL", format[ret])) {
		switch (format[ret]) {
		case 'h':
			if (format[ret + 1] == 'h') {
				ret++;
				conv->length = L_hh;
			} else {
				conv->length = L_h;
			}
			break;
		case 'l':
			if (format[ret + 1] == 'l') {
				ret++;
				conv->length = L_ll;
			} else {
				conv->length = L_l;
			}
			break;
		case 'j':
			conv->length = L_j;
			break;
		case 'z':
			conv->length = L_z;
			break;
		case 't':
			conv->length = L_t;
			break;
		case 'L':
			conv->length = L_L;
			break;
		default:
			break;
		}
		ret++;
	}

	/* TODO: validate */

	conv->spec = format[ret];
	ret++;
	return ret;
}
