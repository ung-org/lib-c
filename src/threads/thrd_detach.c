#include <threads.h>
#include <pthread.h>

int thrd_detach(thrd_t thr)
{
	return pthread_detach(thr) == 0 ? thrd_success : thrd_error;
}

/*
STDC(201112)
*/
