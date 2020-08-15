#include <time.h>
#include <stdlib.h>
#include <string.h>
#include "_time.h"

void tzset(void)
{
	char buf[TZNAMELEN * 3]; /* one for std, one for dst, plus dst rule */
	char *tzstr = getenv("TZ");
	if (tzstr == NULL) {
		tzstr = "UTC0";
	}

	if (strlen(tzstr) > sizeof(buf)) {
		return;
	}

	tzname[0] = __time.stdtz;
	tzname[1] = __time.dsttz;
	strcpy(tzname[0], tzstr);

	/* TODO:
	no spaces in actual string

	stdname hh[:mm[:ss]] [dstname [hh[:mm[:ss]]] [,start[/time],end[/time]]

	stdname and dstname are either
		all isalpha()
		'<' [[:alnum:]+-]* '>'

	hh may be prefixed by + or -
	*/

	#ifdef _XOPEN_SOURCE
	/* TODO */
	daylight = 0;
	#endif
}

/*
POSIX(1)
*/
