#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "errno.h"
#include "../_syscall.h"

int setpgid(pid_t pid, pid_t pgid)
{
	SYSCALL(setpgid, int, -1, pid, pgid, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
