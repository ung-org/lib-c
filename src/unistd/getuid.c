#if 0

#include <sys/types.h>
#include "_syscall.h"

uid_t getuid(void)
{
	SYSCALL(getuid, uid_t, -1, 0, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/


#endif
