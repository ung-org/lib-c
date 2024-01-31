#if 0

#include <threads.h>
#include <pthread.h>

void call_once(once_flag *flag, void (*func)(void))
{
	SIGNAL_SAFE(0);
	pthread_once(flag, func);
}

typedef void (*once_fn)(void);

__vcheck_2(call_once, once_flag *, once_fn);

/*
STDC(201112)
*/


#endif
