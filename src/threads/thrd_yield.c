#if 0

#include <threads.h>
#include <sched.h>

void thrd_yield(void)
{
	SIGNAL_SAFE(0);
	sched_yield();
}

__vcheck_0(thrd_yield)

/*
STDC(201112)
*/


#endif
