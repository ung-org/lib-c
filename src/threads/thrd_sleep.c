#if 0

#include <threads.h>
#include <time.h>

int thrd_sleep(const struct timespec *duration, struct timespec *remaining)
{
	SIGNAL_SAFE(0);
	ASSERT_OVERLAP(duration, sizeof(*duration, remaining, sizeof(*remaining));

	return nanosleep(duration, remaining);
}

__check_2(int, 0, thrd_sleep, const struct timespec *, struct timespec *)

/*
STDC(201112)
*/


#endif
