#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "_syscall.h"

off_t lseek(int fildes, off_t offset, int whence)
{
	SYSCALL(lseek, off_t, -1, fildes, offset, whence, 0, 0, 0);
}
/*
POSIX(1)
*/
