#if 0

#include <sys/types.h>
#include "_syscall.h"

pid_t getpid(void)
{
	SYSCALL(getpid, pid_t, -1, 0, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/


#endif
