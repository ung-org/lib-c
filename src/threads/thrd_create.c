#include <threads.h>
#include <pthread.h>

int thrd_create(thrd_t *thr, thrd_start_t func, void *arg)
{
	typedef void *(*pthread_start_fn)(void*);
	return pthread_create(thr, 0, (pthread_start_fn)func, arg);
}
