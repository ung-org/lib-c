#include <locale.h>
#include <stdio.h>
#include <time.h>
#include <string.h>
#include "_safety.h"
#include "locale/_locale.h"

/** convert time to a formatted string **/

size_t strftime(char * restrict s, size_t maxsize, const char * restrict format, const struct tm * restrict timeptr)
{
	size_t converted = 0, i, j;
	char buf[64];
	struct __locale_t *lc = __get_locale();

	SIGNAL_SAFE(0);
	ASSERT_NONNULL(s);
	ASSERT_NONNULL(format);
	ASSERT_NONNULL(timeptr);
	ASSERT_NOOVERLAP(s, maxsize, format, strlen(format));
	ASSERT_NOOVERLAP(s, maxsize, timeptr, sizeof(*timeptr));
	ASSERT_NOOVERLAP(format, sizeof(format), timeptr, sizeof(*timeptr));

	#ifdef _POSIX_SOURCE
	tzset();
	#endif

	for (i = 0; format[i] != '\0' && converted < maxsize; i++) {
		if (format[i] != '%') {
			s[converted++] = format[i];
			continue;
		}

		switch (format[++i]) {
		case 'a':
			sprintf(buf, "%s", lc->lc_time.abday[timeptr->tm_wday]);
			break;

		case 'A':
			sprintf(buf, "%s", lc->lc_time.day[timeptr->tm_wday]);
			break;

		case 'b':
			sprintf(buf, "%s", lc->lc_time.abmon[timeptr->tm_mon]);
			break;

		case 'B':
			sprintf(buf, "%s", lc->lc_time.mon[timeptr->tm_mon]);
			break;

		case 'c':
			/* FIXME: expand this */
			sprintf(buf, "%s", lc->lc_time.d_t_fmt);
			break;

		case 'd':
			sprintf(buf, "%02d", timeptr->tm_mday);
			break;

		case 'e':
			sprintf(buf, "%2d", timeptr->tm_mday);
			break;

		case 'H':
			sprintf(buf, "%02d", timeptr->tm_hour);
			break;

		case 'I':
			sprintf(buf, "%02d", (timeptr->tm_hour + 1) % 13);
			break;

		case 'j':
			sprintf(buf, "%03d", timeptr->tm_yday + 1);
			break;

		case 'm':
			sprintf(buf, "%02d", timeptr->tm_mon + 1);
			break;

		case 'M':
			sprintf(buf, "%02d", timeptr->tm_min);
			break;

		case 'n':
			sprintf(buf, "\n");
			break;

		case 'p':
			sprintf(buf, "%s", lc->lc_time.am_pm[timeptr->tm_hour < 12 ? 0 : 1]);
			break;

		case 'S':
			sprintf(buf, "%02d", timeptr->tm_sec);
			break;

		case 'U':
			/* TODO: two digit week of year, sunday based week */
			sprintf(buf, "%02d", timeptr->tm_yday / 7);
			break;

		case 'w':
			sprintf(buf, "%1d", timeptr->tm_wday);
			break;

		case 'W':
			/* TODO: two digit week of year, monday based week */
			sprintf(buf, "%02d", timeptr->tm_yday / 7);
			break;

		case 'x':
			/* TODO: expand this */
			sprintf(buf, "%s", lc->lc_time.d_fmt);
			break;

		case 'X':
			/* TODO: expand this */
			sprintf(buf, "%s", lc->lc_time.t_fmt);
			break;

		case 'y':
			sprintf(buf, "%02d", timeptr->tm_year % 100);
			break;

		case 'Y':
			sprintf(buf, "%d", timeptr->tm_year + 1900);
			break;

		case 'Z':
			sprintf(buf, "%s", "timezone");
			break;

		case '%':
			sprintf(buf, "%%");
			break;

		default:
			/* undefined behavior */
			sprintf(buf, "-strftime(%%%c) is undefined-", format[i]);
			break;
		}

		for (j = 0; buf[j] != '\0'; j++) {
			s[converted++] = buf[j];
			if (converted >= maxsize - 1) {
				break;
			}
		}
	}

	s[converted++] = '\0';

	if (converted >= maxsize) {
		return 0;
	}

	return converted;
}

__check_4(size_t, 0, strftime, char * restrict, size_t, const char * restrict, const struct tm *)

/***
converts the time at ARGUMENT(timeptr) to a string of no more than
ARGUMENT(maxsize) bytes at ARGUMENT(s). The format of the converted string
is specified by ARGUMENT(format). The string at ARGUMENT(format) may contain
conversion specifiers, which consist of a CHAR(%) followed by one character.
All other characters are copied to ARGUMENT(s) verbatim.

The conversion specifiers are:

FLAG(%a, the current locales abbreviated weekday name)
FLAG(%A, the current locales full weekday name)
FLAG(%b, the current locales abbreviated month name)
FLAG(%B, the current locales full month name)
FLAG(%c, the current locales date and time representation)
FLAG(%d, the day of the month (in the range (01,31)))
FLAG(%H, the hour (in the range (00,23)))
FLAG(%I, the hour (in the range (01,12)))
FLAG(%j, the day of the year (in the range (001,366)))
FLAG(%m, the numeric month (in the range (01,12)))
FLAG(%M, the minute (in the range (00,59)))
FLAG(%p, the current locales AM/PM designator)
FLAG(%S, the second (in the range (00,61)))
FLAG(%U, the week of the year (Sunday based, in the range (00,53)))
FLAG(%w, the numeric weekday (in the range (0,6), with Sunday as 0))
FLAG(%W, the week of the year (Monday based, in the range (00,53)))
FLAG(%x, the current locales date representation)
FLAG(%X, the current locales time representation)
FLAG(%y, the year without centruy (in the range (00,99)))
FLAG(%Y, the year with century)
FLAG(%Z, the time zone name or abbreviation, if determinable)
FLAG(%%, a literal %)
***/

/*
UNDEFINED(Copying takes place between objects that overlap)
LC_TIME
RETURN_FAILURE(ZERO)
RETURN_SUCCESS(the length of the converted string, not counting the terminating null)
STDC(1)
*/
