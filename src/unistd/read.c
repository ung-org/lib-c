#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "errno.h"
#include "nonstd/syscall.h"

ssize_t read(int fildes, void *buf, size_t nbyte)
{
	SC(ssize_t, fildes, buf, nbyte);
}
/*
POSIX(1)
*/
