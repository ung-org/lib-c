#if 0

#include <sys/types.h>
#include <signal.h>
#include "_syscall.h"

int kill(pid_t pid, int sig)
{
	SIGNAL_SAFE(0);
	SYSCALL(kill, int, -1, pid, sig, 0, 0, 0, 0);
}
/*
POSIX(1)
*/


#endif
