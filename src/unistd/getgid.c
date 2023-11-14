#if 0

#include <sys/types.h>
#include "_syscall.h"

gid_t getgid(void)
{
	SYSCALL(getgid, gid_t, -1, 0, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/


#endif
