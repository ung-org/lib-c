#if 0

#include <threads.h>
#include <pthread.h>

int mtx_lock(mtx_t *mtx)
{
	SIGNAL_SAFE(0);
	return pthread_mutex_lock(mtx);
}

/*
STDC(201112)
*/


#endif
