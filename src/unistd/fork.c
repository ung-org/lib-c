#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "errno.h"
#include "nonstd/syscall.h"

pid_t fork(void)
{
	SYSCALL("fork", pid_t, -1, 0, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
