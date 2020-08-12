#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "../_syscall.h"

int close(int fildes)
{
	SYSCALL(close, int, -1, fildes, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
