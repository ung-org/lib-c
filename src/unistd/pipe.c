#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/assert.h"
#include "nonstd/syscall.h"

int pipe(int fildes[2])
{
	ASSERT_NONNULL(fildes);
	SC(int, fildes);
}
/*
POSIX(1)
*/
