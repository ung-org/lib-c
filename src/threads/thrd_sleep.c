#if 0

#include <threads.h>
#include <time.h>

int thrd_sleep(const struct timespec *duration, struct timespec *remaining)
{
	SIGNAL_SAFE(0);
	return nanosleep(duration, remaining);
}

/*
STDC(201112)
*/


#endif
