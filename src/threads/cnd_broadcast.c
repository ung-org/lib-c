#include <threads.h>
#include <pthread.h>

int cnd_broadcast(cnd_t *cond)
{
	return pthread_cond_broadcast(cond) == 0 ? thrd_success : thrd_error;
}

/*
STDC(201112)
*/
