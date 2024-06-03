#include <wctype.h>
#include <string.h>
#include "_wctype.h"

/** lookup character class **/
wctype_t wctype(const char * property)
{
	SIGNAL_SAFE(0);
	ASSERT_NONNULL(property);
	wctype_t epoch = ((__get_locale()->ctype_epoch) << CT_EPOCH_SHIFT);

	if (!strcmp(property, "alnum")) {
		return epoch | CT_ALNUM;
	} else if (!strcmp(property, "alpha")) {
		return epoch | CT_ALPHA;
	} else if (!strcmp(property, "blank")) {
		return epoch | CT_BLANK;
	} else if (!strcmp(property, "cntrl")) {
		return epoch | CT_CNTRL;
	} else if (!strcmp(property, "digit")) {
		return epoch | CT_DIGIT;
	} else if (!strcmp(property, "graph")) {
		return epoch | CT_GRAPH;
	} else if (!strcmp(property, "lower")) {
		return epoch | CT_LOWER;
	} else if (!strcmp(property, "print")) {
		return epoch | CT_PRINT;
	} else if (!strcmp(property, "punct")) {
		return epoch | CT_PUNCT;
	} else if (!strcmp(property, "space")) {
		return epoch | CT_SPACE;
	} else if (!strcmp(property, "upper")) {
		return epoch | CT_UPPER;
	} else if (!strcmp(property, "xdigit")) {
		return epoch | CT_XDIGIT;
	}

	return 0;
}

CHECK_1(wctype_t, 0, wctype, const char *)

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
