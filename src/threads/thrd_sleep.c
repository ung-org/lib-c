#include <threads.h>
#include <time.h>

int thrd_sleep(const struct timespec *duration, struct timespec *remaining)
{
	return nanosleep(duration, remaining);
}
