#if 0

#include <threads.h>
#include <pthread.h>
#include <errno.h>

int cnd_init(cnd_t *cond)
{
	SIGNAL_SAFE(0);
	switch (pthread_cond_init(cond, 0)) {
	case 0:
		return thrd_success;

	case ENOMEM:
		return thrd_nomem;

	default:
		break;
	}

	return thrd_error;
}

CHECK_1(int, 0, cnd_init, cnd_t *)

/*
STDC(201112)
*/


#endif
