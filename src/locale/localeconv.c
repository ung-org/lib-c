#include <locale.h>
#include "string.h"
#include "limits.h"

/** return locale-specific information **/
struct lconv * localeconv(void)
{
	static struct lconv lc;

	char *monetary = setlocale(LC_MONETARY, NULL);
	char *numeric = setlocale(LC_NUMERIC, NULL);

	if (!strcmp(monetary, "C") || !strcmp(monetary, "POSIX")) {
		lc.int_curr_symbol = "";
		lc.currency_symbol = "";
		lc.mon_decimal_point = "";
		lc.grouping = "";
		lc.mon_thousands_sep = "";
		lc.mon_grouping = "";
		lc.positive_sign = "";
		lc.negative_sign = "";
		lc.int_frac_digits = CHAR_MAX;
		lc.frac_digits = CHAR_MAX;
		lc.p_cs_precedes = CHAR_MAX;
		lc.p_sep_by_space = CHAR_MAX;
		lc.n_cs_precedes = CHAR_MAX;
		lc.n_sep_by_space = CHAR_MAX;
		lc.p_sign_posn = CHAR_MAX;
		lc.n_sign_posn = CHAR_MAX;

		#if (defined __STDC_VERSION__ && __STDC_VERSION__ >= 199909L)
		lc.int_p_cs_precedes = CHAR_MAX;
		lc.int_p_sep_by_space = CHAR_MAX;
		lc.int_n_cs_precedes = CHAR_MAX;
		lc.int_n_sep_by_space = CHAR_MAX;
		lc.int_p_sign_posn = CHAR_MAX;
		lc.int_n_sign_posn = CHAR_MAX;
		#endif
	}
	
	if (!strcmp(numeric, "C") || !strcmp(numeric, "POSIX")) {
		lc.decimal_point = "";
		lc.thousands_sep = "";
	}

	/*
	RETURN_SUCCESS(a pointer to a filled-in STRUCTDEF(lconv) for the current locale);
	*/
	return &lc;
}

/***
fills in a STRUCTDEF(lconv) in the current locale for
use in formatting numbers and monetary values.
***/

/*
LC_MONETARY
LC_NUMERIC
*/
/*
STDC(1)
*/
