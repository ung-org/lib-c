#if 0

#include <locale.h>
#include "_locale.h"

/** return locale-specific information **/

struct lconv * localeconv(void)
{
	/*
	RETURN_SUCCESS(a pointer to a filled-in STRUCTDEF(lconv) for the current locale);
	*/
	return &(__get_locale()->lconv);
}

/***
fills in a STRUCTDEF(lconv) in the current locale for
use in formatting numbers and monetary values.
***/

/*
LC_MONETARY
LC_NUMERIC
STDC(1)
*/


#endif
