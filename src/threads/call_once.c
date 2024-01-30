#if 0

#include <threads.h>
#include <pthread.h>

void call_once(once_flag *flag, void (*func)(void))
{
	SIGNAL_SAFE(0);
	pthread_once(flag, func);
}

/*
STDC(201112)
*/


#endif
