#if ((!defined _POSIX_C_SOURCE) || (_POSIX_C_SOURCE < 199309L))
#undef _POSIX_C_SOURCE
#define _POSIX_C_SOURCE 199309L
#endif

#include <sys/types.h>
#include <time.h>
#include "_syscall.h"

unsigned sleep(unsigned seconds)
{
	struct timespec tosleep = { seconds, 0 };
	struct timespec remaining = { 0 , 0 };

	if (__scall2(nanosleep, &tosleep, &remaining) < 0) {
		return seconds;
	}

	return remaining.tv_sec;
}

/*
POSIX(1)
*/
