#if 0

#include <sys/types.h>
#include <signal.h>
#include "_syscall.h"

int sigsuspend(const sigset_t * sigmask)
{
	SYSCALL(sigsuspend, int, -1, sigmask, sizeof(*sigmask), 0, 0, 0, 0);
}
/*
POSIX(1)
*/


#endif
