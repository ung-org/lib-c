#include <sys/types.h>
#include <unistd.h>
#include "_syscall.h"

int chown(const char *path, uid_t owner, gid_t group)
{
	SYSCALL(chown, int, -1, path, owner, group, 0, 0, 0);
}
/*
POSIX(1)
*/
