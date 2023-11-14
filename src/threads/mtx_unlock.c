#if 0

#include <threads.h>
#include <pthread.h>

int mtx_unlock(mtx_t *mtx)
{
	return pthread_mutex_unlock(mtx) == 0 ? thrd_success : thrd_error;
}

/*
STDC(201112)
*/


#endif
