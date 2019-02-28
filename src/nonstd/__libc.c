#include "sys/types.h"
#include <nonstd/internal.h>
#include "locale.h"
#include "nonstd/locale.h"

#include "_printf.h"
#include "_syscall.h"

void *__libc(LIBC_INTERNAL variable)
{
	extern void *__libc_per_thread(LIBC_INTERNAL __variable);

	void *r = (void*)0;

	static struct __locale_t locale;

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
		r = __libc_per_thread(THREAD_LOCALE);
		if (!r) {
			r = &locale;
		}
		r = ((struct __locale_t*)r)->ctype;
		break;

	case SYSCALL_LOOKUP:
		r = (void*)__syscall_lookup;
		break;

	case PRINTF:
		r = (void*)(__printf);
		break;

	default:
		break;
	}

	return r;
}
