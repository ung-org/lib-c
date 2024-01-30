#if 0

#include <threads.h>
#include <pthread.h>

void cnd_destroy(cnd_t *cond)
{
	SIGNAL_SAFE(0);
	pthread_cond_destroy(cond);
}

/*
STDC(201112)
*/


#endif
