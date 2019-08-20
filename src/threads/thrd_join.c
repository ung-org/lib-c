#include <threads.h>
#include <pthread.h>

int thrd_join(thrd_t thr, int *res)
{
	return pthread_join(thr, (void**)&res) == 0 ? thrd_success : thrd_error;
}
