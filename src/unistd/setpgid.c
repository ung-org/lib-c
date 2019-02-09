#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "errno.h"
#include "nonstd/syscall.h"

int setpgid(pid_t pid, pid_t pgid)
{
	SC(int, pid, pgid);
}
/*
POSIX(1)
*/
