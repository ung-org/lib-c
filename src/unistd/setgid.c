#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/syscall.h"

int setgid(gid_t gid)
{
	SYSCALL("setgid", int, -1, gid, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
