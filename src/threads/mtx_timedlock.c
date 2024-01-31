#if 0

#include <threads.h>
#include <pthread.h>
#include <errno.h>

int mtx_timedlock(mtx_t *restrict mtx, const struct timespec *restrict ts)
{
	SIGNAL_SAFE(0);
	switch (pthread_mutex_timedlock(mtx, ts)) {
	case 0:
		return thrd_success;

	case ETIMEDOUT:
		return thrd_timedout;

	default:
		break;
	}

	return thrd_error;
}

__check_2(int, 0, mtx_timedlock, mtx_t * restrict, const struct timespec * restrict)

/*
STDC(201112)
*/


#endif
