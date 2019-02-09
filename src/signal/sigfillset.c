#include "sys/types.h"
#include <signal.h>

int sigfillset(sigset_t * set)
{
	(void)set;
	return 0;
}
/*
POSIX(1)
*/
