#include <nonstd/locale.h>

struct __locale_t {
	int mask;
	char *all;
	char *collate;
	unsigned char *collation;
	char *ctype;
	unsigned char *ctattr;
	unsigned char *ctoupper;
	unsigned char *ctolower;
	char *message;
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
