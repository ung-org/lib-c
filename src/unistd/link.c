#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/syscall.h"

int link(const char *path1, const char *path2)
{
	SC(int, path1, path2);
}
/*
POSIX(1)
*/
