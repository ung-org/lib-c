#include "locale.h"
#include "_locale.h"

/*
This implementation only supports a single, global locale. A second
implementation will be needed for POSIX.1-2008 per-thread locales.
*/

struct __locale_t * __get_locale(void)
{
	static struct __locale_t l;
	return &l;
}
