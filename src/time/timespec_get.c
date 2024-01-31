#include <time.h>
#include "_safety.h"

int timespec_get(struct timespec *ts, int base)
{
	SIGNAL_SAFE(0);
	(void)ts;
	return base;
}

CHECK_2(int, 0, timespec_get, struct timespec *, int)

/*
STDC(201112)
*/
