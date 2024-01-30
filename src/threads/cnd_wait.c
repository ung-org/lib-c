#if 0

#include <threads.h>
#include <pthread.h>

int cnd_wait(cnd_t *cond, mtx_t *mtx)
{
	SIGNAL_SAFE(0);
	return pthread_cond_wait(cond, mtx) == 0 ? thrd_success : thrd_error;
}

/*
STDC(201112)
*/


#endif
