#include <threads.h>
#include <pthread.h>

int cnd_wait(cnd_t *cond, mtx_t *mtx)
{
	return pthread_cond_wait(cond, mtx);
}
