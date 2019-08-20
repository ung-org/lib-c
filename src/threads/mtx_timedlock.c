#include <threads.h>
#include <pthread.h>

int mtx_timedlock(mtx_t *restrict mtx, const struct timespec *restrict ts)
{
	return pthread_mutex_timedlock(mtx, ts);
}
