#include <nonstd/locale.h>

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

	char *monetary;
	char *numeric;
	struct lconv mn;

	char *time;
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
