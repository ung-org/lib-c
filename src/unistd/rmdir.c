#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "errno.h"
#include "../_syscall.h"

int rmdir(const char *path)
{
	SYSCALL("rmdir", int, -1, path, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
