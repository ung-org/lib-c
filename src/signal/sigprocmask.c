#include "sys/types.h"
#include <signal.h>

int sigprocmask(int how, const sigset_t * restrict set, sigset_t * restrict oset)
{
	(void)how; (void)set; (void)oset;
	return 0;
}
/*
POSIX(1)
*/
