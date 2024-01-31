#include <stdio.h>
#include <time.h>
#include "_safety.h"

#define CHECKRANGE(field, min, max) do {\
	if (timeptr->tm_##field < min || timeptr->tm_##field > max) { \
		__undefined("In call to asctime(), the field tm_%s (%d) is out of range [%d, %d] in the provided time", #field, timeptr->tm_##field, min, max); \
	} \
} while (0)

/** convert broken down time to string **/

char * asctime(const struct tm * timeptr)
{
	const char days[7][3] = {
		"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"
	};
	const char months[12][3] = {
		"Jan", "Feb", "Mar", "Apr", "May", "Jun",
		"Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
	};
	static char result[26];

	SIGNAL_SAFE(0);
	ASSERT_NONNULL(timeptr);

	CHECKRANGE(sec, 0, 60);
	CHECKRANGE(min, 0, 59);
	CHECKRANGE(hour, 0, 23);
	CHECKRANGE(mday, 1, 31);
	CHECKRANGE(mon, 0, 11);
	CHECKRANGE(year, -900, 8100);
	CHECKRANGE(wday, 0, 6);
	CHECKRANGE(yday, 0, 365);

	sprintf(result, "%.3s %.3s%3d %.2d:%.2d:%.2d %d\n",
		days[timeptr->tm_wday], months[timeptr->tm_mon],
		timeptr->tm_mday, timeptr->tm_hour, timeptr->tm_min,
		timeptr->tm_sec, timeptr->tm_year + 1900);
	return result;
}

CHECK_1(char *, NULL, asctime, const struct tm *)

/***
converts the time specified at ARGUMENT(timeptr) to a string
in the format LITERAL(DDD MMM dd hh:mm:ss yyyy\n\0), where LITERAL(DDD) is the
three-character abbreviated day of the week, LITERAL(MMM) is the three-character
abbreviated month, LITERAL(dd) is the day of the month, LITERAL(hh) is the
hour of the day (in the range (0,23)), LITERAL(mm) is the minute of the hour
(in the range (0,59)), LITERAL(ss) is the second of the minute (in the range
(0,61)), and LITERAL(yyyy) is the year.
***/

/*
RETURN_ALWAYS(a pointer to the string)
STDC(1)
*/
