#include "../_nonstd.h"
#include "../locale/_locale.h"

void *__libc(LIBC_INTERNAL variable)
{
	extern void *__libc_per_thread(LIBC_INTERNAL __variable);
	static struct __locale_t locale;

	void *r = (void*)0;

	switch (variable) {
	case THREAD_LOCALE:
		r = __libc_per_thread(THREAD_LOCALE);
		if (r) {
			break;
		}
		/* fallthru */

	case GLOBAL_LOCALE:
		r = &locale;
		break;

	case CTYPE:
		r = __libc(THREAD_LOCALE);
		if (((struct __locale_t*)r)->ctype[0] == '\0') {
			r = &locale;
		}
		r = ((struct __locale_t*)r)->lc_ctype.ctattr;
		break;

	case TOLOWER:
		r = __libc(THREAD_LOCALE);
		if (((struct __locale_t*)r)->ctype[0] == '\0') {
			r = &locale;
		}
		r = ((struct __locale_t*)r)->lc_ctype.ctolower;
		break;

	case TOUPPER:
		r = __libc(THREAD_LOCALE);
		if (((struct __locale_t*)r)->ctype[0] == '\0') {
			r = &locale;
		}
		r = ((struct __locale_t*)r)->lc_ctype.ctoupper;
		break;

	case LCONV:
		r = __libc(THREAD_LOCALE);
		if (((struct __locale_t*)r)->numeric[0] == '\0') {
			r = &locale;
		}
		r = &(((struct __locale_t*)r)->mn);
		break;

	default:
		break;
	}

	return r;
}
