#include <locale.h>
#include <limits.h>
#include <stdio.h>
#include <string.h>

#include "nonstd/locale.h"
#include "nonstd/ctype.h"

/*
#define LC_COLLATE_MASK (1<<0)
#define LC_CTYPE_MASK (1<<1)
#define LC_MONETARY_MASK (1<<2)
#define LC_NUMERIC_MASK (1<<3)
#define LC_TIME_MASK (1<<4)
#define LC_MESSAGES_MASK (1<<5)
#define LC_ALL_MASK (0xff)
*/

static char * (__load_locale)(struct __locale_t *loc, int mask, const char *name)
{
	char localepath[FILENAME_MAX] = "/lib/locale/";
	strcat(localepath, name);

	FILE *localefile = fopen(localepath, "rb");
	if (localefile == NULL && strcmp(name, "C") && strcmp(name, "POSIX")) {
		return NULL;
	}

	if (mask & LC_COLLATE_MASK) {
		strcpy(loc->collate, name);

		/* read from file */
		loc->lc_collate = NULL;
	}

	if (mask & LC_CTYPE_MASK) {
		strcpy(loc->ctype, name);

		if (localefile == NULL) {
			int i;

			for (i = 0; i < 32; i++) {
				loc->lc_ctype.ctattr[i] = CT_CNTRL;
			}
			for (i = 'a'; i < 'z'; i++) {
				loc->lc_ctype.ctattr[i] = CT_LOWER;
			}
			for (i = 'A'; i < 'Z'; i++) {
				loc->lc_ctype.ctattr[i] = CT_UPPER;
			}
			for (i = '0'; i < '9'; i++) {
				loc->lc_ctype.ctattr[i] = CT_DIGIT | CT_XDIGIT;
			}
			/* others */
			for (i = 0; i < CHAR_MAX; i++) {
				loc->lc_ctype.ctoupper[i] = ('a' <= i && i <= 'z') ? i + 32 : i;
			}

			for (i = 0; i < CHAR_MAX; i++) {
				loc->lc_ctype.ctolower[i] = ('A' <= i && i <= 'Z') ? i - 32 : i;
			}
		} else {
			/* read from file */
			/*
			loc->lc_ctype.ctattr
			loc->lc_ctype.ctoupper
			loc->lc_ctype.ctolower
			*/
		}
	}

	if (mask & LC_MONETARY_MASK) {
		strcpy(loc->monetary, name);

		if (localefile == NULL) {
			loc->mn.mon_decimal_point = "";
			loc->mn.mon_thousands_sep = "";
			loc->mn.mon_grouping = "";
			loc->mn.positive_sign = "";
			loc->mn.negative_sign =  "";
			loc->mn.currency_symbol = "";
			loc->mn.frac_digits = CHAR_MAX;
			loc->mn.p_cs_precedes = CHAR_MAX;
			loc->mn.n_cs_precedes = CHAR_MAX;
			loc->mn.p_sep_by_space = CHAR_MAX;
			loc->mn.n_sep_by_space = CHAR_MAX;
			loc->mn.p_sign_posn = CHAR_MAX;
			loc->mn.n_sign_posn = CHAR_MAX;
			loc->mn.int_curr_symbol = "";
			loc->mn.int_frac_digits = CHAR_MAX;
			loc->mn.int_p_cs_precedes = CHAR_MAX;
			loc->mn.int_n_cs_precedes = CHAR_MAX;
			loc->mn.int_p_sep_by_space = CHAR_MAX;
			loc->mn.int_n_sep_by_space = CHAR_MAX;
			loc->mn.int_p_sign_posn = CHAR_MAX;
			loc->mn.int_n_sign_posn = CHAR_MAX;
		} else {
			/*
			loc->mn.monetary fields;
			*/
		}
	}

	if (mask & LC_NUMERIC_MASK) {
		strcpy(loc->numeric, name);

		if (localefile == NULL) {
			loc->mn.decimal_point = ".";
			loc->mn.thousands_sep = "";
			loc->mn.grouping = "";
		} else {
			/*
			loc->mn.numeric fields
			*/
		}
	}

	if (mask & LC_TIME_MASK) {
		strcpy(loc->time, name);

		/* read from file */
		/* loc->lc_time */
	}

	if (mask & LC_MESSAGES_MASK) {
		strcpy(loc->messages, name);

		/* read */
		loc->lc_messages.yesexpr = NULL;
		loc->lc_messages.noexpr = NULL;
	}

	return (char*)name;
}
