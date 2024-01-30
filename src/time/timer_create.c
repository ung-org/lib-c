#include <time.h>
#include "_safety.h"

int timer_create(clockid_t clockid, struct sigevent *restrict evp, timer_t *restrict timerid)
{
	SIGNAL_SAFE(0);
	return 0;
}

/*
POSIX(199309)
LINK(rt)
*/
