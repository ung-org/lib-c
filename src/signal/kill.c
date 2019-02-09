#include "sys/types.h"
#include <signal.h>
#include "nonstd/syscall.h"

int kill(pid_t pid, int sig)
{
	SC(int, pid, sig);
}
/*
POSIX(1)
*/
