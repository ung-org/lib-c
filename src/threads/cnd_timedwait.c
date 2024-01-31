#if 0

#include <threads.h>
#include <pthread.h>
#include <errno.h>

int cnd_timedwait(cnd_t *restrict cond, mtx_t *restrict mtx, const struct timespec *restrict ts)
{
	SIGNAL_SAFE(0);
	ASSERT_NOOVERLAP(cond, sizeof(*cond), mtx, sizeof(*mtx));
	ASSERT_NOOVERLAP(cond, sizeof(*cond), ts, sizeof(*ts));
	ASSERT_NOOVERLAP(mtx, sizeof(*mtx), ts, sizeof(*ts));

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

__check_3(int, 0, cnd_timedwait, cnd_t * restrict, mtx_t * restrict, const struct timespec * restrict)

/*
STDC(201112)
*/


#endif
