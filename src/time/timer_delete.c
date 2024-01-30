#include <time.h>
#include "_safety.h"

int timer_delete(timer_t timerid)
{
	SIGNAL_SAFE(0);
	return 0;
}

/*
POSIX(199309)
LINK(rt)
*/
