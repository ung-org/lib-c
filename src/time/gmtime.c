#include <time.h>
#include "_assert.h"

# define SEC_PER_MIN	(60L)
# define MIN_PER_HR	(60L)
# define SEC_PER_HR	((SEC_PER_MIN) * (MIN_PER_HR))
# define HR_PER_DAY	(24L)
# define SEC_PER_DAY	((SEC_PER_HR) * (HR_PER_DAY))
# define DAY_PER_YEAR	(365L) /* not counting leap year */
# define SEC_PER_YEAR	((SEC_PER_DAY) * (DAY_PER_YEAR))
# define ISLEAPYEAR(y)	((y) % 4L == 0 && ((y) % 100L != 0 || (y) % 400L == 0))
# define EPOCH_YEAR	(70)

/** convert arithmetic time to broken down time **/

struct tm * gmtime(const time_t * timer)
{
	static struct tm tm = {0};
	time_t seconds = 0;
	int days = 0;
	int days_per_mon[] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };

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
	if (ISLEAPYEAR(tm.tm_year + 1900)) {
		days_per_mon[1] = 29;
	}

	tm.tm_yday = (int)(seconds / SEC_PER_DAY);
	seconds = seconds % SEC_PER_DAY;
	tm.tm_hour = (int)(seconds / SEC_PER_HR);
	seconds = seconds % SEC_PER_HR;
	tm.tm_min = (int)(seconds / SEC_PER_MIN);
	tm.tm_sec = (int)(seconds % SEC_PER_MIN);

	days = tm.tm_yday;
	tm.tm_mon = 0;
	while (days > days_per_mon[tm.tm_mon]) {
		days -= days_per_mon[tm.tm_mon];
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
