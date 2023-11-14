#if 0

#include <threads.h>
#include <pthread.h>
#include <errno.h>

int mtx_timedlock(mtx_t *restrict mtx, const struct timespec *restrict ts)
{
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

/*
STDC(201112)
*/


#endif
