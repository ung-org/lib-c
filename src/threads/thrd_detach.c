#if 0

#include <threads.h>
#include <pthread.h>

int thrd_detach(thrd_t thr)
{
	SIGNAL_SAFE(0);
	return pthread_detach(thr) == 0 ? thrd_success : thrd_error;
}

__check_1(int, 0, thrd_detach, thrd_t)

/*
STDC(201112)
*/


#endif
