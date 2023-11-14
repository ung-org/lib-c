#if 0

#include <time.h>
#include "_assert.h"
#include "_time.h"

/** convert arithmetic time to broken down time **/

struct tm * gmtime(const time_t * timer)
{
	static struct tm tm = {0};
	time_t seconds = 0;
	int days = 0;

	ASSERT_NONNULL(timer);
	seconds = *timer;

	tm.tm_year = EPOCH_YEAR;
	while (seconds > SEC_PER_YEAR) {
		/* TODO: Will this mess up Dec 31 of leap year? */
		/* TODO: Or Jan 1 of year after leap year? */
		seconds -= SEC_PER_YEAR;
		if (ISLEAPYEAR(tm.tm_year + 1900)) {
			seconds -= SEC_PER_DAY;
		}
		tm.tm_year++;
	}

	tm.tm_yday = (int)(seconds / SEC_PER_DAY);
	seconds = seconds % SEC_PER_DAY;

	tm.tm_hour = (int)(seconds / SEC_PER_HR);
	seconds = seconds % SEC_PER_HR;

	tm.tm_min = (int)(seconds / SEC_PER_MIN);

	tm.tm_sec = (int)(seconds % SEC_PER_MIN);

	days = tm.tm_yday;
	tm.tm_mon = 0;
	while (days > DAYS_IN(tm.tm_year, tm.tm_mon)) {
		days -= DAYS_IN(tm.tm_year, tm.tm_mon);
		tm.tm_mon++;
	}
	tm.tm_mday = days;

	/* TODO: tm_wday */
	tm.tm_wday = 0;
	/* TODO: tm_isdst */
	tm.tm_isdst = 0;
	
	return &tm;
}

/***
converts the UTC time at ARGUMENT(timer) to a filled out STRUCTDEF(tm).
***/

/*
RETURN_FAILURE(CONSTANT(NULL))
RETURN_SUCCESS(a pointer to the converted time)
STDC(1)
*/


#endif
