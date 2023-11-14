#if 0

#include <time.h>
#include "_syscall.h"

int nanosleep(const struct timespec *rqtp, struct timespec *rmtp)
{
	SYSCALL(nanosleep, int, -1, rqtp, rmtp, 0, 0, 0, 0);
}

/*
POSIX(199309)
*/


#endif
