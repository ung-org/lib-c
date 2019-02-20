#include <sched.h>

int sched_setscheduler(pid_t pid, int policy, const struct sched_param * param)
{
	return 0;
}

/*
POSIX(199309)
LINK(rt)
*/
