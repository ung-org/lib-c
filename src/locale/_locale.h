#ifndef ___LOCALE_H__
#define ___LOCALE_H__

#include <locale.h>
#include <limits.h>

#ifndef LC_ALL_MASK
#include "LC_ALL_MASK.h"
#endif

#ifndef LC_COLLATE_MASK
#include "LC_COLLATE_MASK.h"
#endif

#ifndef LC_CTYPE_MASK
#include "LC_CTYPE_MASK.h"
#endif

#ifndef LC_NUMERIC_MASK
#include "LC_NUMERIC_MASK.h"
#endif

#ifndef LC_TIME_MASK
#include "LC_TIME_MASK.h"
#endif

#ifndef LC_MESSAGES_MASK
#include "LC_MESSAGES_MASK.h"
#endif

#ifndef LC_MONETARY_MASK
#include "LC_MONETARY_MASK.h"
#endif

struct __locale_t {
	char all[UCHAR_MAX];

	char ctype[UCHAR_MAX];
	struct {
		unsigned int ctattr[UCHAR_MAX + 1];
		unsigned char ctoupper[UCHAR_MAX + 1];
		unsigned char ctolower[UCHAR_MAX + 1];
	} lc_ctype;

	char collate[UCHAR_MAX];
	struct collation {
		char * sequence;
		int weight;
	} *lc_collate;

	char messages[UCHAR_MAX];
	struct {
		char *yesexpr;
		char *noexpr;
	} lc_messages;

	char monetary[UCHAR_MAX];
	char numeric[UCHAR_MAX];
	struct lconv lconv;

	char time[UCHAR_MAX];
	struct {
		char *abday[7];
		char *day[7];
		char *abmon[12];
		char *mon[12];
		char *d_t_fmt;
		char *d_fmt;
		char *t_fmt;
		char *am_pm[2];
		char *t_fmt_ampm;
		struct {
			char direction;
			int offset;
			int start_year;
			int start_month;
			int start_day;
			int end_year;
			int end_month;
			int end_day;
			char *era_name;
			char *era_format;
		} era;
		char *era_d_fmt;
		char *era_t_fmt;
		char *era_d_t_fmt;
		char *alt_digits;
	} lc_time;
};

char * __load_locale(struct __locale_t *loc, int mask, const char *name);
struct __locale_t * __get_locale(void);

#endif
