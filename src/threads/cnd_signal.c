#if 0

#include <threads.h>
#include <pthread.h>

int cnd_signal(cnd_t *cond)
{
	SIGNAL_SAFE(0);
	return pthread_cond_signal(cond) == 0 ? thrd_success : thrd_error;
}

CHECK_1(int, 0, cnd_signal, cnd_t *)

/*
STDC(201112)
*/


#endif
