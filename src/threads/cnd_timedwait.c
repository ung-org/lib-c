#include <threads.h>
#include <pthread.h>

int cnd_timedwait(cnd_t *restrict cond, mtx_t *restrict mtx, const struct timespec *restrict ts)
{
	return pthread_cond_timedwait(cond, mtx, ts);
}
