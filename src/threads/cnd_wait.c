#if 0

#include <threads.h>
#include <pthread.h>

int cnd_wait(cnd_t *cond, mtx_t *mtx)
{
	SIGNAL_SAFE(0);
	ASSERT_NOOVERLAP(cond, sizeof(*cond), mtx, sizeof(*mtx));

	return pthread_cond_wait(cond, mtx) == 0 ? thrd_success : thrd_error;
}

CHECK_2(int, 0, cnd_wait, cnd_t *, mtx_t *)

/*
STDC(201112)
*/


#endif
