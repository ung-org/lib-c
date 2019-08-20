#include <threads.h>
#include <sched.h>

void thrd_yield(void)
{
	sched_yield();
}
