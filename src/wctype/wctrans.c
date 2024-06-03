#include <wctype.h>
#include <string.h>
#include "_wctype.h"

/** lookup character translation **/
wctrans_t wctrans(const char * property)
{
	SIGNAL_SAFE(0);
	ASSERT_NONNULL(property);
	wctrans_t epoch = __get_locale()->ctype_epoch << CT_EPOCH_SHIFT;

	if (!strcmp(property, "tolower")) {
		return epoch | CT_LOWER;
	} else if (!strcmp(property, "toupper")) {
		return epoch | CT_UPPER;
	}

	return 0;
}

CHECK_1(wctrans_t, 0, wctrans, const char *)

/***
The fn(wctrans) function looks up the wide character translation mapping
specified by the string arg(property), to be used as the arg(desc) parameter
to fn(towctrans).

At least the following mappings are supported: ctrans(tolower) and
ctrans(toupper).
***/

/* RETURN(0): arg(property) is not a recognized translation */
/* RETURN(NZ): a mapping identifier to be used as the arg(desc) parameter to fn(towctrans) */

/* UNSPECIFED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/*
STDC(199409)
*/
