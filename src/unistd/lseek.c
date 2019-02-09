#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/syscall.h"

off_t lseek(int fildes, off_t offset, int whence)
{
	SC(off_t, fildes, offset, whence);
}
/*
POSIX(1)
*/
