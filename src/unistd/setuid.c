#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "_syscall.h"

int setuid(uid_t uid)
{
	SYSCALL(setuid, int, -1, uid, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
