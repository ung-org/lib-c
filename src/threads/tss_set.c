#include <threads.h>
#include <pthread.h>

int tss_set(tss_t key, void *val)
{
	return pthread_setspecific(key, val);
}
