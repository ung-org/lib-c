#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "../_syscall.h"

int link(const char *path1, const char *path2)
{
	SYSCALL(link, int, -1, path1, path2, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
