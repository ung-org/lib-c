#include "sys/types.h"
#include <nonstd/internal.h>
#include "nonstd/locale.h"
#include "nonstd/io.h"

#include "_printf.h"
#include "_scanf.h"
#include "_locale.h"
#include "_syscall.h"

void *__libc(LIBC_INTERNAL variable)
{
	extern void *__libc_per_thread(LIBC_INTERNAL __variable);
	static struct __locale_t locale;
	static struct __FILE file_streams[FOPEN_MAX];

	void *r = (void*)0;

	switch (variable) {
	case ERRNO:
		return __libc_per_thread(ERRNO);

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

	case SYSCALL_LOOKUP:
		r = (void*)__syscall_lookup;
		break;

	case PRINTF:
		r = (void*)(__printf);
		break;

	case FILE_STREAMS:
		r = file_streams;
		break;

	case LOAD_LOCALE:
		r = (void*)(__load_locale);
		break;

	default:
		break;
	}

	return r;
}
