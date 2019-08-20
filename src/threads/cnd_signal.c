#include <threads.h>
#include <pthread.h>

int cnd_signal(cnd_t *cond)
{
	return pthread_cond_signal(cond);
}
