#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "errno.h"
#include "nonstd/syscall.h"

int rmdir(const char *path)
{
	SC(int, path);
}
/*
POSIX(1)
*/
