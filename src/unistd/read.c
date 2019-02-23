#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "errno.h"
#include "nonstd/syscall.h"

ssize_t read(int fildes, void *buf, size_t nbyte)
{
	SYSCALL("read", ssize_t, -1, fildes, buf, nbyte, 0, 0, 0);
}
/*
POSIX(1)
*/
