#include <time.h>
#include "_safety.h"

int clock_settime(clockid_t clock_id, const struct timespec *tp)
{
	SIGNAL_SAFE(0);
	return 0;
}

/*
POSIX(199309)
LINK(rt)
*/
