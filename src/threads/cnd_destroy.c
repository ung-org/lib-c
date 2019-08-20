#include <threads.h>
#include <pthread.h>

void cnd_destroy(cnd_t *cond)
{
	pthread_cond_destroy(cond);
}
