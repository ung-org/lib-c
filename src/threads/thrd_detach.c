#include <threads.h>
#include <pthread.h>

int thrd_detach(thrd_t thr)
{
	return pthread_detach(thr);
}
