#include "sys/types.h"
#include <signal.h>

int sigismember(const sigset_t * set, int signo)
{
	(void)set; (void)signo;
	return 0;
}
/*
POSIX(1)
*/
