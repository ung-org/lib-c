#if 0

#include <threads.h>
#include <pthread.h>

void *tss_get(tss_t key)
{
	SIGNAL_SAFE(0);
	return pthread_getspecific(key);
}

CHECK_1(void *, 0, tss_get, tss_t)

/*
STDC(201112)
*/


#endif
