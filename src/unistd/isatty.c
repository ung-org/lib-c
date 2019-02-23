#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "errno.h"
#include "nonstd/syscall.h"

int isatty(int fildes)
{
	SYSCALL("isatty", int, -1, fildes, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
