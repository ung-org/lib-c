#if defined __STDC_VERSION__ && __STDC_VERSION__ >= 201101L

static struct per_thread *per_thread(void)
{
	_Thread_local static struct per_thread pt = {0};
	return &pt;
}

#elif defined _POSIX_C_SOURCE && _POSIX_C_SOURCE >= 199506L
#include <pthread.h>

static pthread_key_t __per_thread_key;

static void _make_key(void)
{
	pthread_key_create(&key, NULL);
}

static struct per_thread *per_thread(void)
{
	static pthread_once_t key_once = PTHREAD_ONCE_INIT;
	struct per_thread *pt;
	pthread_once(&key_once, make_key);
	if ((pt = pthread_getspecific(key)) == NULL) {
		pt = calloc(1, sizeof (*pt));
		pthread_setspecific(key, pt);
	}
	return pt;
}

#else

static struct per_thread *per_thread(void)
{
	static struct per_thread pt = {0};
	return &pt;
}

#endif
