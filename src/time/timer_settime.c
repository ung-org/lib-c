#include <time.h>
#include "_safety.h"

int timer_settime(timer_t timerid, int flags, const struct itimerspec * restrict value, struct itimerspec * restrict ovalue)
{
	SIGNAL_SAFE(0);
	return 0;
}

/*
POSIX(199309)
LINK(rt)
*/
