#include <time.h>
#include "_safety.h"

int clock_getres(clockid_t clock_id, struct timespec *res)
{
	SIGNAL_SAFE(0);
	return 0;
}

/*
POSIX(199309)
LINK(rt)
*/
