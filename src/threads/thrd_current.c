#if 0

#include <threads.h>
#include <pthread.h>

thrd_t thrd_current(void)
{
	SIGNAL_SAFE(0);
	return pthread_self();
}

/*
STDC(201112)
*/


#endif
