#if 0

#include <threads.h>
#include <pthread.h>

int tss_create(tss_t *key, tss_dtor_t dtor)
{
	SIGNAL_SAFE(0);
	return pthread_key_create(key, dtor) == 0 ? thrd_success : thrd_error;
}

/*
STDC(201112)
*/


#endif
