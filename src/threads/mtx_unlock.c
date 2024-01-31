#if 0

#include <threads.h>
#include <pthread.h>

int mtx_unlock(mtx_t *mtx)
{
	SIGNAL_SAFE(0);
	return pthread_mutex_unlock(mtx) == 0 ? thrd_success : thrd_error;
}

CHECK_1(int, 0, mtx_unlock, mtx_t *)

/*
STDC(201112)
*/


#endif
