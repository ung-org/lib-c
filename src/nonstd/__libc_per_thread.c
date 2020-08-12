#include "../_nonstd.h"
#include "../locale/_locale.h"
#include "../_perthread.h"

void *__libc_per_thread(LIBC_INTERNAL variable)
{
	THREAD_LOCAL int errno;
	THREAD_LOCAL struct __locale_t locale;

	switch (variable) {
	case THREAD_LOCALE:
		return &locale;

	default:
		break;
	}

	return (void*)0;
}
