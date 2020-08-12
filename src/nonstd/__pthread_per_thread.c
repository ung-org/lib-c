#if defined _POSIX_C_SOURCE && 199506L <= _POSIX_C_SOURCE

#include "pthread.h"

static pthread_key_t __per_thread_key;

static void __make_key(void)
{
	pthread_key_create(&__per_thread_key, NULL);
}

static struct per_thread *per_thread(void)
{
	static pthread_once_t key_once = PTHREAD_ONCE_INIT;
	struct per_thread *pt;
	pthread_once(&key_once, __make_key);
	if ((pt = pthread_getspecific(__per_thread_key)) == NULL) {
		pt = calloc(1, sizeof (*pt));
		pthread_setspecific(__per_thread_key, pt);
	}
	return pt;
}
#endif

/*
LINK(pthread)
POSIX(199506)
*/
