#ifndef ___TIME_H__
#define ___TIME_H__

#define SEC_PER_MIN	(60L)

#define MIN_PER_HR	(60L)
#define SEC_PER_HR	((SEC_PER_MIN) * (MIN_PER_HR))

#define HR_PER_DAY	(24L)
#define SEC_PER_DAY	((SEC_PER_HR) * (HR_PER_DAY))

#define DAY_PER_YEAR	(365L) /* not counting leap year */
#define SEC_PER_YEAR	((SEC_PER_DAY) * (DAY_PER_YEAR))
#define MON_PER_YEAR	(12L)

#define ISLEAPYEAR(y)	((y) % 4L == 0 && ((y) % 100L != 0 || (y) % 400L == 0))

/* it's really 1970, but tm_year is 0 based from 1900 */
#define EPOCH_YEAR	(70)

/* months are zero based, so February is 1, etc. */
#define DAYS_IN(y, m)	(m == 1 ? (ISLEAPYEAR(y) ? 29 : 28) : \
			((m == 3 || m == 5 || m == 8 || m == 10) ? 30 : 31))

#define TZNAMELEN 64

struct __time {
	char stdtz[TZNAMELEN];
	char dsttz[TZNAMELEN];
};

extern struct __time __time;

#endif
