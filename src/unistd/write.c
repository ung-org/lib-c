#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "_assert.h"
#include "_syscall.h"

ssize_t write(int fildes, const void *buf, size_t nbyte)
{
	if (nbyte != 0) {
		ASSERT_NONNULL(buf);
	}
	SYSCALL(write, ssize_t, -1, fildes, buf, nbyte, 0, 0, 0);
}
/*
POSIX(1)
*/
