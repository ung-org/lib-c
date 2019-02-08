#include <wctype.h>
#include "string.h"
#include "nonstd/assert.h"
#include "nonstd/ctype.h"

/** lookup character translation **/
wctrans_t wctrans(const char * property)
{
	ASSERT_NONNULL(property);

	if (!strcmp(property, "tolower")) {
		return LOWER;
	} else if (!strcmp(property, "toupper")) {
		return UPPER;
	}

	return 0;
}

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
