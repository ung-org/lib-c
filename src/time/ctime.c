#include <time.h>
#include "_safety.h"

/** convert arithmetic time to string **/

char * ctime(const time_t * timer)
{
	SIGNAL_SAFE(0);

	#ifdef _POSIX_SOURCE
	tzset();
	#endif

	return asctime(localtime(timer));
}

CHECK_1(char *, NULL, ctime, const time_t *)

/***
converts the time at ARGUMENT(timer) to a string in the same format as
FUNCTION(asctime).
***/

/*
RETURN_ALWAYS(a pointer to the string)
STDC(1)
*/
