#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "../_syscall.h"

uid_t geteuid(void)
{
	SYSCALL(geteuid, uid_t, -1, 0, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
