#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/syscall.h"

uid_t getuid(void)
{
	SYSCALL("getuid", uid_t, -1, 0, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
