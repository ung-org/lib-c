#if 0

#include <sys/types.h>
#include "_syscall.h"

int setpgid(pid_t pid, pid_t pgid)
{
	SYSCALL(setpgid, int, -1, pid, pgid, 0, 0, 0, 0);
}
/*
POSIX(1)
*/


#endif
