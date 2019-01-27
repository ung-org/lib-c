#include <limits.h>
#include "nonstd/types.h"

#ifndef LC_GLOBAL_LOCALE
typedef void * locale_t;
#define LC_GLOBAL_LOCALE ((locale_t)(-1))
#endif

static unsigned char *__getmap(int map)
{
	static unsigned char c_attr[UCHAR_MAX + 1] = {0};
	static unsigned char c_lower[UCHAR_MAX + 1] = {0};
	static unsigned char c_upper[UCHAR_MAX + 1] = {0};
	struct __locale_t c;
	struct __locale_t *locale = __libc.per_thread()->locale;

	if (!locale || locale == LC_GLOBAL_LOCALE || !locale->ctype) {
		locale = __libc.locale.global;
	}

	if (!locale || !locale->ctype) {
		unsigned char lower[] = "abcdefghijklmnopqrstuvwxyz";
		unsigned char upper[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		/* $@` are in ASCII but not 9899 */
		unsigned char punct[] = "!\"#%&'()*+,-./:;<=>?[\\]^_{|}~$@`";
		unsigned char space[] = " \f\n\r\t\v";
		unsigned char xdigit[] = "0123456789abcdefABCDEF";

		locale = &c;
		c.ctattr = c_attr;
		c.ctolower = c_lower;
		c.ctoupper = c_upper;

		if (c_attr['a'] == 0) {
			unsigned int i;
			for (i = 0; i <= UCHAR_MAX; i++) {
				c_attr[i] = 0;
				c_lower[i] = i;
				c_upper[i] = i;
			}

			for (i = 0; i < sizeof(lower); i++) {
				c_attr[lower[i]] = __libc.ctype.lower;
				c_upper[lower[i]] = upper[i];
			}

			for (i = 0; i < sizeof(upper); i++) {
				c_attr[upper[i]] = __libc.ctype.upper;
				c_lower[upper[i]] = lower[i];
			}

			for (i = 0; i < sizeof(xdigit); i++) {
				c_attr[xdigit[i]] |= __libc.ctype.xdigit;
			}

			for (i = 0; i < sizeof(punct); i++) {
				c_attr[punct[i]] = __libc.ctype.punct;
			}

			for (i = 0; i < sizeof(space); i++) {
				c_attr[space[i]] = __libc.ctype.space;
			}

			c_attr[0] = 0;
		}
	}
	
	if (map == __libc.ctype.ctolower) {
		return locale->ctolower;
	} else if (map == __libc.ctype.ctoupper) {
		return locale->ctoupper;
	}

	return locale->ctattr;
}
