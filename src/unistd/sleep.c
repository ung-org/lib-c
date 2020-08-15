#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "time.h"

#if _POSIX_C_SOURCE < 199309
#define nanosleep __nanosleep
#include "time/struct_timespec.c"
#include "time/nanosleep.c"
#endif

unsigned sleep(unsigned seconds)
{
	struct timespec tosleep = { seconds, 0 };
	struct timespec remaining = { 0 , 0 };

	if (nanosleep(&tosleep, &remaining) == -1) {
		return seconds;
	}

	return remaining.tv_sec;
}
/*
POSIX(1)
*/
