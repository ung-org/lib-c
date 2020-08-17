#include <sys/types.h>
#include "_syscall.h"

pid_t setsid(void)
{
	SYSCALL(setsid, pid_t, -1, 0, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
