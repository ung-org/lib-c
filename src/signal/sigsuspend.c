#include "sys/types.h"
#include <signal.h>

int sigsuspend(const sigset_t * sigmask)
{
	(void)sigmask;
	return 0;
}
/*
POSIX(1)
*/
