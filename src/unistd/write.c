#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/assert.h"
#include "nonstd/syscall.h"

ssize_t write(int fildes, const void *buf, size_t nbyte)
{
	if (nbyte != 0) {
		ASSERT_NONNULL(buf);
	}
	SC(ssize_t, fildes, buf, nbyte);
}
/*
POSIX(1)
*/
