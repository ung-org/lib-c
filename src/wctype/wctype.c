#include <wctype.h>
#include "string.h"
#include "nonstd/assert.h"
#include "nonstd/ctype.h"

/** lookup character class **/
wctype_t wctype(const char * property)
{
	ASSERT_NONNULL(property);

	if (!strcmp(property, "alnum")) {
		return ALPHA | DIGIT;
	} else if (!strcmp(property, "alpha")) {
		return ALPHA;
	} else if (!strcmp(property, "cntrl")) {
		return CNTRL;
	} else if (!strcmp(property, "digit")) {
		return DIGIT;
	} else if (!strcmp(property, "graph")) {
		return GRAPH;
	} else if (!strcmp(property, "lower")) {
		return LOWER;
	} else if (!strcmp(property, "print")) {
		return PRINT;
	} else if (!strcmp(property, "punct")) {
		return PUNCT;
	} else if (!strcmp(property, "space")) {
		return SPACE;
	} else if (!strcmp(property, "upper")) {
		return UPPER;
	} else if (!strcmp(property, "xdigit")) {
		return XDIGIT;
	}

	return 0;
}

/***
The fn(wctype) function looks up the character class specified by the string
arg(property). If arg(property) is a recognized character class, a value is
returned that can be used as the arg(desc) parameter to fn(iswctype).

At least the following character classes are recognized: cclass(alnum),
cclass(alpha), cclass(cntrl), cclass(digit), cclass(graph), cclass(lower),
cclass(print), cclass(punct), cclass(space), cclass(upper), and cclass(xdigit).
***/

/* RETURN(0): the requested character class is not recognized */
/* RETURN(NZ): a value usable as the arg(desc) parameter to fn(iswctype) */

/* UNSPECIFIED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_CTYPE */

/*
STDC(199409)
*/
