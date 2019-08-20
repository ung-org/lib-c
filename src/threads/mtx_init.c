#include <threads.h>
#include <pthread.h>

int mtx_init(mtx_t *mtx, int type)
{
	pthread_mutexattr_t attr;
	pthread_mutexattr_init(&attr);
	if (type & mtx_recursive) {
		pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE);
	} else {
		pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_DEFAULT);
	}
	return pthread_mutex_init(mtx, &attr);
}
