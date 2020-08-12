#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "../_syscall.h"

pid_t getppid(void)
{
	SYSCALL("getppid", pid_t, -1, 0, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
