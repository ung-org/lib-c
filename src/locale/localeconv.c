#include <locale.h>
#include <string.h>
#include "_locale.h"
#include "_safety.h"
#include "_readonly.h"

/** return locale-specific information **/

#define ROCOPY(__dst, __src, __field, __offset) do { \
		(__dst)->__field = (char*)(__dst) + __offset; \
		strcpy((__dst)->__field, (__src)->__field); \
		__offset += strlen((__dst)->__field) + 1; \
	} while (0)

struct lconv * localeconv(void)
{
	SIGNAL_SAFE(0);
	static struct lconv *lc = NULL;
	struct lconv *current = &(__get_locale()->lconv);

	if (lc == NULL) {
		lc = __readonly(RO_ALLOC, "localeconv");
	}

	/*
	RETURN_SUCCESS(a pointer to a filled-in STRUCTDEF(lconv) for the current locale);
	*/

	__readonly(RO_UNLOCK, lc);
	/* TODO: This assumes all strings fit in a single page */
	(*lc) = (*current);
	size_t offset = sizeof(*lc);
	ROCOPY(lc, current, decimal_point, offset);
	ROCOPY(lc, current, thousands_sep, offset);
	ROCOPY(lc, current, grouping, offset);
	ROCOPY(lc, current, int_curr_symbol, offset);
	ROCOPY(lc, current, currency_symbol, offset);
	ROCOPY(lc, current, mon_decimal_point, offset);
	ROCOPY(lc, current, mon_thousands_sep, offset);
	ROCOPY(lc, current, mon_grouping, offset);
	ROCOPY(lc, current, positive_sign, offset);
	ROCOPY(lc, current, negative_sign, offset);
	__readonly(RO_LOCK, lc);

	return lc;
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
