#include <time.h>
#include <sys/times.h>
#include "_syscall.h"

clock_t times(struct tms *buffer)
{
	SYSCALL(times, clock_t, -1, buffer, 0, 0, 0, 0, 0);
}

/*
POSIX(1)
*/
