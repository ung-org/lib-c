#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/syscall.h"

int chdir(const char *path)
{
	SC(int, path);
}
/*
POSIX(1)
*/
