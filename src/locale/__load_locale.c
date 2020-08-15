#include "locale.h"
#include "limits.h"
#include "stdio.h"
#include "string.h"

#include "_locale.h"
#include "ctype/_ctype.h"

#define LC_COLLATE_MASK (1<<0)
#define LC_CTYPE_MASK (1<<1)
#define LC_MONETARY_MASK (1<<2)
#define LC_NUMERIC_MASK (1<<3)
#define LC_TIME_MASK (1<<4)
#define LC_MESSAGES_MASK (1<<5)
#define LC_ALL_MASK (0xff)

#define setall(_map, _input, _mask) do { \
	size_t _i; \
	for (_i = 0; _i < sizeof(_input) - 1; _i++) { \
		_map[(int)_input[_i]] |= _mask; \
	} \
} while (0)

char * __load_locale(struct __locale_t *loc, int mask, const char *name)
{
	if (name == NULL) {
		name = "";
	}

	char localepath[FILENAME_MAX] = "/lib/locale/";
	strcat(localepath, name);

	FILE *localefile = fopen(localepath, "rb");
	if (localefile == NULL && strcmp(name, "C") && strcmp(name, "POSIX")) {
		return NULL;
	}

	if (mask & LC_COLLATE_MASK) {
		strcpy(loc->collate, name);

		if (localefile == NULL) {
			/* TODO: POSIX/C locale collation */
		} else {
			/* read from file */
			loc->lc_collate = NULL;
		}
	}

	if (mask & LC_CTYPE_MASK) {
		strcpy(loc->ctype, name);

		if (localefile == NULL) {
			char upper[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
			char lower[] = "abcdefghijklmnopqrstuvwxyz";
			char digit[] = "0123456789";
			char xdigit[] = "0123456789ABCDEFabcdef";
			char space[] = " \f\n\r\t\v";
			char punct[] = "!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~";
			char blank[] = " \t";
			size_t i;

			memset(loc->lc_ctype.ctattr, 0, sizeof(loc->lc_ctype.ctattr));

			for (i = 0; i < 32; i++) {
				loc->lc_ctype.ctattr[i] = CT_CNTRL;
			}
			loc->lc_ctype.ctattr[127] = CT_CNTRL;

			setall(loc->lc_ctype.ctattr, upper, CT_UPPER);
			setall(loc->lc_ctype.ctattr, upper, CT_ALPHA);
			setall(loc->lc_ctype.ctattr, lower, CT_LOWER);
			setall(loc->lc_ctype.ctattr, lower, CT_ALPHA);
			setall(loc->lc_ctype.ctattr, digit, CT_DIGIT);
			setall(loc->lc_ctype.ctattr, xdigit, CT_XDIGIT);
			setall(loc->lc_ctype.ctattr, space, CT_SPACE);
			setall(loc->lc_ctype.ctattr, punct, CT_PUNCT);
			setall(loc->lc_ctype.ctattr, blank, CT_BLANK);

			for (i = 0; i < CHAR_MAX; i++) {
				if (loc->lc_ctype.ctattr[i] &
					(CT_UPPER | CT_ALPHA | CT_LOWER |
					 CT_DIGIT | CT_XDIGIT | CT_PUNCT)) {
					loc->lc_ctype.ctattr[i] |= CT_GRAPH;
					loc->lc_ctype.ctattr[i] |= CT_PRINT;
				}
			}

			loc->lc_ctype.ctattr[' '] |= CT_PRINT;

			for (i = 0; i < UCHAR_MAX; i++) {
				loc->lc_ctype.ctoupper[i] = i;
				loc->lc_ctype.ctolower[i] = i;
			}

			for (i = 0; i < sizeof(upper); i++) {
				loc->lc_ctype.ctolower[(int)upper[i]] = lower[i];
				loc->lc_ctype.ctoupper[(int)lower[i]] = upper[i];
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
			loc->lconv.mon_decimal_point = "";
			loc->lconv.mon_thousands_sep = "";
			loc->lconv.mon_grouping = "";
			loc->lconv.positive_sign = "";
			loc->lconv.negative_sign =  "";
			loc->lconv.currency_symbol = "";
			loc->lconv.frac_digits = CHAR_MAX;
			loc->lconv.p_cs_precedes = CHAR_MAX;
			loc->lconv.n_cs_precedes = CHAR_MAX;
			loc->lconv.p_sep_by_space = CHAR_MAX;
			loc->lconv.n_sep_by_space = CHAR_MAX;
			loc->lconv.p_sign_posn = CHAR_MAX;
			loc->lconv.n_sign_posn = CHAR_MAX;
			loc->lconv.int_curr_symbol = "";
			loc->lconv.int_frac_digits = CHAR_MAX;

			#if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
			loc->lconv.int_p_cs_precedes = CHAR_MAX;
			loc->lconv.int_n_cs_precedes = CHAR_MAX;
			loc->lconv.int_p_sep_by_space = CHAR_MAX;
			loc->lconv.int_n_sep_by_space = CHAR_MAX;
			loc->lconv.int_p_sign_posn = CHAR_MAX;
			loc->lconv.int_n_sign_posn = CHAR_MAX;
			#else
			loc->lconv.__int_p_cs_precedes = CHAR_MAX;
			loc->lconv.__int_n_cs_precedes = CHAR_MAX;
			loc->lconv.__int_p_sep_by_space = CHAR_MAX;
			loc->lconv.__int_n_sep_by_space = CHAR_MAX;
			loc->lconv.__int_p_sign_posn = CHAR_MAX;
			loc->lconv.__int_n_sign_posn = CHAR_MAX;
			#endif
		} else {
			/*
			loc->lconv.monetary fields;
			*/
		}
	}

	if (mask & LC_NUMERIC_MASK) {
		strcpy(loc->numeric, name);

		if (localefile == NULL) {
			loc->lconv.decimal_point = ".";
			loc->lconv.thousands_sep = "";
			loc->lconv.grouping = "";
		} else {
			/*
			loc->lconv.numeric fields
			*/
		}
	}

	if (mask & LC_TIME_MASK) {
		strcpy(loc->time, name);

		if (localefile == NULL) {
			memset(&loc->lc_time, 0, sizeof(loc->lc_time));

			loc->lc_time.d_t_fmt = "%a %b %e %H:%M:%S %Y";
			loc->lc_time.d_fmt = "%m/%d/%y";
			loc->lc_time.t_fmt = "%H:%M:%S";
			loc->lc_time.am_pm[0] = "AM";
			loc->lc_time.am_pm[1] = "PM";
			loc->lc_time.t_fmt_ampm = "%I:%M:%S %p";
			loc->lc_time.day[0] = "Sunday";
			loc->lc_time.day[1] = "Monday";
			loc->lc_time.day[2] = "Tuesday";
			loc->lc_time.day[3] = "Wednesday";
			loc->lc_time.day[4] = "Thursday";
			loc->lc_time.day[5] = "Friday";
			loc->lc_time.day[6] = "Saturday";
			loc->lc_time.abday[0] = "Sun";
			loc->lc_time.abday[1] = "Mon";
			loc->lc_time.abday[2] = "Tue";
			loc->lc_time.abday[3] = "Wed";
			loc->lc_time.abday[4] = "Thu";
			loc->lc_time.abday[5] = "Fri";
			loc->lc_time.abday[6] = "Sat";
			loc->lc_time.mon[0] = "January";
			loc->lc_time.mon[1] = "February";
			loc->lc_time.mon[2] = "March";
			loc->lc_time.mon[3] = "April";
			loc->lc_time.mon[4] = "May";
			loc->lc_time.mon[5] = "June";
			loc->lc_time.mon[6] = "July";
			loc->lc_time.mon[7] = "August";
			loc->lc_time.mon[8] = "September";
			loc->lc_time.mon[9] = "October";
			loc->lc_time.mon[10] = "November";
			loc->lc_time.mon[11] = "December";
			loc->lc_time.abmon[0] = "Jan";
			loc->lc_time.abmon[1] = "Feb";
			loc->lc_time.abmon[2] = "Mar";
			loc->lc_time.abmon[3] = "Apr";
			loc->lc_time.abmon[4] = "May";
			loc->lc_time.abmon[5] = "Jun";
			loc->lc_time.abmon[6] = "Jul";
			loc->lc_time.abmon[7] = "Aug";
			loc->lc_time.abmon[8] = "Sep";
			loc->lc_time.abmon[9] = "Oct";
			loc->lc_time.abmon[10] = "Nov";
			loc->lc_time.abmon[11] = "Dec";
		} else {
			/* read from file */
			/* loc->lc_time */
		}
	}

	if (mask & LC_MESSAGES_MASK) {
		strcpy(loc->messages, name);

		if (localefile == NULL) {
			loc->lc_messages.yesexpr = "^[yY]";
			loc->lc_messages.noexpr = "^[nN]";
		} else {
			/* read */
			loc->lc_messages.yesexpr = NULL;
			loc->lc_messages.noexpr = NULL;
		}
	}

	return (char*)name;
}

/*
STDC(0)
*/
