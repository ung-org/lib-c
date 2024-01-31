#if 0

#include <threads.h>
#include <pthread.h>

thrd_t thrd_current(void)
{
	SIGNAL_SAFE(0);
	return pthread_self();
}

__check_0(thrd_t, 0, thrd_current)

/*
STDC(201112)
*/


#endif
