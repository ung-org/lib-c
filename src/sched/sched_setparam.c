#include <sched.h>

int sched_setparam(pid_t pid, const struct sched_param * param)
{
	return 0;
}

/*
POSIX(199309)
LINK(rt)
*/
