#include <threads.h>
#include <pthread.h>

int cnd_init(cnd_t *cond)
{
	return pthread_cond_init(cond, 0);
}
