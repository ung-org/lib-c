#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/syscall.h"

int chown(const char *path, uid_t owner, gid_t group)
{
	SC(int, path, owner, group);
}
/*
POSIX(1)
*/
