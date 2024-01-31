#if 0

#include <threads.h>
#include <pthread.h>

int thrd_join(thrd_t thr, int *res)
{
	SIGNAL_SAFE(0);
	return pthread_join(thr, (void**)&res) == 0 ? thrd_success : thrd_error;
}

__check_2(int, 0, thrd_join, thrd_t, int *)

/*
STDC(201112)
*/


#endif
