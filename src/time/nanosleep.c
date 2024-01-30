#include <time.h>
#include "_safety.h"
#include "_syscall.h"

int nanosleep(const struct timespec *rqtp, struct timespec *rmtp)
{
	SIGNAL_SAFE(0);
	SYSCALL(nanosleep, int, -1, rqtp, rmtp, 0, 0, 0, 0);
}

/*
POSIX(199309)
*/
