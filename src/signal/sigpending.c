#include "sys/types.h"
#include <signal.h>

int sigpending(sigset_t * set)
{
	(void)set;
	return 0;
}
/*
POSIX(1)
*/
