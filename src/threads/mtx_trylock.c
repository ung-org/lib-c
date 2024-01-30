#if 0

#include <threads.h>
#include <pthread.h>
#include <errno.h>

int mtx_trylock(mtx_t *mtx)
{
	SIGNAL_SAFE(0);
	switch (pthread_mutex_trylock(mtx)) {
	case 0:
		return thrd_success;

	case EBUSY:
		return thrd_busy;

	default:
		break;
	}

	return thrd_error;
}

/*
STDC(201112)
*/


#endif
