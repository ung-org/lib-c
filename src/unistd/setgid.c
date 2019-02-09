#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "errno.h"
#include "nonstd/syscall.h"

int setgid(gid_t gid)
{
	SC(int, gid);
}
/*
POSIX(1)
*/
