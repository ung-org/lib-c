#if 0

#include <threads.h>
#include <pthread.h>

void mtx_destroy(mtx_t *mtx)
{
	SIGNAL_SAFE(0);
	pthread_mutex_destroy(mtx);
}

/*
STDC(201112)
*/


#endif
