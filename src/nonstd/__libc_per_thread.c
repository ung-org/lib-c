#include "../_nonstd.h"
#include "locale.h"
#include "../locale/_locale.h"

#if defined __STDC_VERSION__ && 201112L <= __STDC_VERSION__ && !defined __STDC_NO_THREADS__
#define THREAD_LOCAL static _Thread_local
#else
#define THREAD_LOCAL static
#endif

void *__libc_per_thread(LIBC_INTERNAL variable)
{
	THREAD_LOCAL int errno;
	THREAD_LOCAL struct __locale_t locale;

	switch (variable) {
	case ERRNO:
		return &errno;

	case THREAD_LOCALE:
		return &locale;

	default:
		break;
	}

	return (void*)0;
}
