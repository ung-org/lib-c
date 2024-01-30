#if 0

#include <threads.h>
#include <pthread.h>

_Noreturn void thrd_exit(int res)
{
	SIGNAL_SAFE(0);
	pthread_exit(&res);
}

/*
STDC(201112)
*/


#endif
