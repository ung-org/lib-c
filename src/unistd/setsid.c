#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/syscall.h"

pid_t setsid(void)
{
	SC0(pid_t);
}
/*
POSIX(1)
*/
