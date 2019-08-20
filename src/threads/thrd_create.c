#include <threads.h>
#include <pthread.h>
#include <errno.h>

int thrd_create(thrd_t *thr, thrd_start_t func, void *arg)
{
	typedef void *(*pthread_start_fn)(void*);
	switch (pthread_create(thr, 0, (pthread_start_fn)func, arg)) {
	case 0:
		return thrd_success;

	case ENOMEM:
		return thrd_nomem;

	default:
		break;
	}

	return thrd_error;
}
