#if 0

#include "_locale.h"

/*
This implementation only supports a single, global locale. A second
implementation will be needed for POSIX.1-2008 per-thread locales.
*/

#ifdef _POSIX_SOURCE
# define DEFAULT_LOCALE "POSIX"
#else
# define DEFAULT_LOCALE "C"
#endif

struct __locale_t * __get_locale(void)
{
	static struct __locale_t l;
	static int loaded = 0;
	if (!loaded) {
		loaded = 1;
		__load_locale(&l, LC_ALL, DEFAULT_LOCALE);
	}
	return &l;
}


#endif
