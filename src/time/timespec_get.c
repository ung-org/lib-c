#include <time.h>
#include "_safety.h"

int timespec_get(struct timespec *ts, int base)
{
	SIGNAL_SAFE(0);
	(void)ts;
	return base;
}

/*
STDC(201112)
*/
