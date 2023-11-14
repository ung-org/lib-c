#if 0

#include <sys/types.h>
#include "_syscall.h"

int setuid(uid_t uid)
{
	SYSCALL(setuid, int, -1, uid, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/


#endif
