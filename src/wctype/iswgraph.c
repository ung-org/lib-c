#include <wctype.h>
#include "wchar.h"
#include "nonstd/assert.h"

/** test whether a wide character is graphic **/
int iswgraph(wint_t wc)
{
	ASSERT_REPRESENTABLE(wc, WCHAR_MIN, WCHAR_MAX, "wchar_t", WEOF);

	wctype_t graph = wctype("graph");
	return iswctype(wc, graph);
}

/***
The fn(iswgraph) function tests whether arg(wc) is a wide character in the class
cclass(graph) in the current locale.
***/

/* RETURN(NZ): arg(wc) is a graphic character */
/* RETURN(0): arg(wc) is not a graphic character */

/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/*
STDC(199409)
*/
