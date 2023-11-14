#if 0

#include <time.h>
#include "_time.h"
#include "_assert.h"

/** convert time structure to arithmetic type **/

time_t mktime(struct tm * timeptr)
{
	int i;

	ASSERT_NONNULL(timeptr);

	#ifdef _POSIX_SOURCE
	tzset();
	#endif

	while (timeptr->tm_sec < 0) {
		timeptr->tm_min--;
		timeptr->tm_sec += SEC_PER_MIN;
	}

	if (timeptr->tm_sec >= SEC_PER_MIN) {
		timeptr->tm_min += timeptr->tm_sec / SEC_PER_MIN;
		timeptr->tm_sec %= SEC_PER_MIN;
	}

	while (timeptr->tm_min < 0) {
		timeptr->tm_hour--;
		timeptr->tm_min += MIN_PER_HR;
	}

	if (timeptr->tm_min >= MIN_PER_HR) {
		timeptr->tm_hour += timeptr->tm_min / MIN_PER_HR;
		timeptr->tm_sec %= MIN_PER_HR;
	}

	while (timeptr->tm_hour < 0) {
		timeptr->tm_mday--;
		timeptr->tm_hour += HR_PER_DAY;
	}

	if (timeptr->tm_hour >= HR_PER_DAY) {
		timeptr->tm_mday += timeptr->tm_hour / HR_PER_DAY;
		timeptr->tm_hour %= HR_PER_DAY;
	}

	/* tm_mday is 1 based */
	while (timeptr->tm_mday < 1) {
		timeptr->tm_mon--;
		timeptr->tm_mday += DAYS_IN(timeptr->tm_year, timeptr->tm_mon);
	}

	while (timeptr->tm_mday > DAYS_IN(timeptr->tm_year, timeptr->tm_mon)) {
		timeptr->tm_mday -= DAYS_IN(timeptr->tm_year, timeptr->tm_mon);
		timeptr->tm_mon++;
	}

	/* negative years are OK, it just means before 1900 */

	if (timeptr->tm_mon >= MON_PER_YEAR) {
		timeptr->tm_year += timeptr->tm_mon / MON_PER_YEAR;
		timeptr->tm_mon %= MON_PER_YEAR;
	}

	timeptr->tm_yday = 0;
	for (i = 1; i < timeptr->tm_mon; i++) {
		timeptr->tm_yday += DAYS_IN(timeptr->tm_year, timeptr->tm_mon);
	}
	timeptr->tm_yday += timeptr->tm_mday;

	/* TODO: timeptr->tm_wday */
	/* TODO: timeptr->tm_isdst */

	return ((timeptr->tm_year - EPOCH_YEAR) * SEC_PER_YEAR)
		+ (timeptr->tm_yday * SEC_PER_DAY)
		+ (timeptr->tm_hour * SEC_PER_HR)
		+ (timeptr->tm_min * SEC_PER_MIN)
		+ timeptr->tm_sec;
}

/***
converts the local time pointed to by ARGUMENT(timeptr) to
an arithmetic value of type TYPEDEF(time_t). It also normalizes the values in
the STRUCTDEF(tm) at ARGUMENT(timeptr) to fit the defined limits, as well as
correcting the members MEMBER(tm_wday) and MEMBER(tm_yday) if they were
previously incorrect.
***/

/*
RETURN_FAILURE(CAST(TYPEDEF(time_t), -1))
RETURN_SUCCESS(the converted time)
STDC(1)
*/


#endif
