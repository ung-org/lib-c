#if 0

#include <threads.h>
#include <pthread.h>

int thrd_equal(thrd_t thr0, thrd_t thr1)
{
	return pthread_equal(thr0, thr1);
}

/*
STDC(201112)
*/


#endif
