#include "sys/types.h"
#include "sys/resource.h"
#include <sys/wait.h>

pid_t wait3(int *stat_loc, int options, struct rusage *resource_usage)
{
	pid_t ret = waitpid((pid_t)-1, stat_loc, options);
	if (ret == (pid_t)-1) {
		return (pid_t)-1;
	}

	if (getrusage(RUSAGE_CHILDREN, resource_usage) == -1) {
		return (pid_t)-1;
	}

	return ret;
}

/*
XOPEN(400,600)
*/
