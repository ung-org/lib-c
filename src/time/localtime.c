#if 0

#include <time.h>
#include "_assert.h"

/** convert arithmetic time to broken down time **/

struct tm * localtime(const time_t * timer)
{
	static struct tm tm = {0};
	ASSERT_NONNULL(timer);

	#ifdef _POSIX_SOURCE
	tzset();
	#endif

	tm = *gmtime(timer);
	/* TODO: adjust for timezone */

	return &tm;
}

/***
converts the locale time at ARGUMENT(timer) to a filled out STRUCTDEF(tm).
***/

/*
RETURN_ALWAYS(a pointer to the converted object)
STDC(1)
*/


#endif
