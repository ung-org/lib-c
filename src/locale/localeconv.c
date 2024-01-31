#include <locale.h>
#include "_locale.h"
#include "_safety.h"

/** return locale-specific information **/

struct lconv * localeconv(void)
{
	SIGNAL_SAFE(0);

	/*
	RETURN_SUCCESS(a pointer to a filled-in STRUCTDEF(lconv) for the current locale);
	*/
	/* TODO: mark return value read-only */
	return &(__get_locale()->lconv);
}

CHECK_0(struct lconv *, NULL, localeconv)

/***
fills in a STRUCTDEF(lconv) in the current locale for
use in formatting numbers and monetary values.
***/

/*
LC_MONETARY
LC_NUMERIC
STDC(1)
*/
