#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "fcntl.h"
#include "limits.h"
#include "errno.h"
#include "_syscall.h"

int dup2(int fildes, int fildes2)
{
	SYSCALL(dup2, int, -1, fildes, fildes2, 0, 0, 0, 0);
}

/*
POSIX(1)
*/
