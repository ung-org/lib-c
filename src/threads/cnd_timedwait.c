#include <threads.h>
#include <pthread.h>
#include <errno.h>

int cnd_timedwait(cnd_t *restrict cond, mtx_t *restrict mtx, const struct timespec *restrict ts)
{
	switch (pthread_cond_timedwait(cond, mtx, ts)) {
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
