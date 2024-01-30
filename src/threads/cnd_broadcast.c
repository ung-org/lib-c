#if 0

#include <threads.h>
#include <pthread.h>

int cnd_broadcast(cnd_t *cond)
{
	SIGNAL_SAFE(0);
	return pthread_cond_broadcast(cond) == 0 ? thrd_success : thrd_error;
}

/*
STDC(201112)
*/


#endif
