#include <sched.h>

int sched_getparam(pid_t pid, struct sched_param * param)
{
	return -1;
}

/*
POSIX(199309)
LINK(rt)
*/
