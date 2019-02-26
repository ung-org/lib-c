#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/syscall.h"

gid_t getegid(void)
{
	SYSCALL("getegid", gid_t, -1, 0, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
