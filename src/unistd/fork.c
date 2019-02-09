#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "errno.h"
#include "nonstd/syscall.h"

pid_t fork(void)
{
	SC0(pid_t);
}
/*
POSIX(1)
*/
