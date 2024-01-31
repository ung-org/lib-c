#if 0

#include <threads.h>
#include <pthread.h>

int tss_set(tss_t key, void *val)
{
	SIGNAL_SAFE(0);
	return pthread_setspecific(key, val) == 0 ? thrd_success : thrd_error;
}

CHECK_2(int, 0, tss_set, tss_t, void *)

/*
STDC(201112)
*/


#endif
