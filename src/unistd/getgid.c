#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/syscall.h"

gid_t getgid(void)
{
	SYSCALL("getgid", gid_t, -1, 0, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
