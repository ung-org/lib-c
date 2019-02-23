#include "sys/types.h"
#include <signal.h>
#include "nonstd/syscall.h"

int kill(pid_t pid, int sig)
{
	SYSCALL("kill", int, -1, pid, sig, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
