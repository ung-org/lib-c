#include <threads.h>
#include <pthread.h>

int mtx_trylock(mtx_t *mtx)
{
	return pthread_mutex_trylock(mtx);
}
