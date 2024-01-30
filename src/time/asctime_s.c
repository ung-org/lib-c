#include <time.h>
#include <stdio.h>
#include "_safety.h"

/** convert broken down time to string **/
errno_t asctime_s(char *s, rsize_t maxsize, const struct tm * timeptr)
{
	static const char days[7][3] = {
		"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"
	};
	static const char months[12][3] = {
		"Jan", "Feb", "Mar", "Apr", "May", "Jun",
		"Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
	};
	SIGNAL_SAFE(0);

	snprintf(s, maxsize, "%.3s %.3s%3d %.2d:%.2d:%.2d %d\n",
		days[timeptr->tm_wday], months[timeptr->tm_mon],
		timeptr->tm_mday, timeptr->tm_hour, timeptr->tm_min,
		timeptr->tm_sec, timeptr->tm_year + 1900);
	return 0;
}

/***
The fn(asctime) function converts the time specified at arg(timeptr) to a string
in the format string(DDD MMM dd hh:mm:ss yyyy\n\0), where str(DDD) is the
three-character abbreviated day of the week, str(MMM) is the three-character
abbreviated month, string(dd) is the day of the month, str(hh) is the hour of
the day (in the range (0,23)), str(mm) is the minute of the hour (in the range
(0,59)), str(ss) is the second of the minute (in the range (0,61)), and
str(yyyy) is the year.
***/

/* UNSPECIFIED: - */
/* UNDEFINED: - */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/* RETURN: a pointer to the string */

/*
CEXT1(201112)
*/
