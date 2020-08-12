#include "../_nonstd.h"
#include "../locale/_locale.h"
#include "../_perthread.h"

void *__libc_per_thread(LIBC_INTERNAL variable)
{
	THREAD_LOCAL struct __locale_t locale;

	if (variable == THREAD_LOCALE) {
		return &locale;
	}

	return (void*)0;
}
