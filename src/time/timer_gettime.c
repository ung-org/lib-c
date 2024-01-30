#include <time.h>
#include "_safety.h"

int timer_gettime(timer_t timerid, struct itimerspec *value)
{
	SIGNAL_SAFE(0);
	return 0;
}

/*
POSIX(199309)
LINK(rt)
*/
