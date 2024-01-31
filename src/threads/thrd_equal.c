#if 0

#include <threads.h>
#include <pthread.h>

int thrd_equal(thrd_t thr0, thrd_t thr1)
{
	SIGNAL_SAFE(0);
	return pthread_equal(thr0, thr1);
}

CHECK_2(int, 0, thrd_equal, thrd_t, thrd_t)

/*
STDC(201112)
*/


#endif
