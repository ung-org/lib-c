#if 0

#include <threads.h>
#include <pthread.h>

void tss_delete(tss_t key)
{
	SIGNAL_SAFE(0);
	pthread_key_delete(key);
}

__vcheck_1(tss_delete, tss_t)

/*
STDC(201112)
*/


#endif
