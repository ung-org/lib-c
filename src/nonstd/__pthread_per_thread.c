#include "pthread.h"

static pthread_key_t __per_thread_key;

static void __make_key(void)
{
	pthread_key_create(&key, NULL);
}

static struct per_thread *per_thread(void)
{
	static pthread_once_t key_once = PTHREAD_ONCE_INIT;
	struct per_thread *pt;
	pthread_once(&key_once, __make_key);
	if ((pt = pthread_getspecific(key)) == NULL) {
		pt = calloc(1, sizeof (*pt));
		pthread_setspecific(key, pt);
	}
	return pt;
}

/*
LINK(pthread)
*/
