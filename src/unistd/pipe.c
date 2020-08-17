#include <sys/types.h>
#include <unistd.h>
#include "_assert.h"
#include "_syscall.h"

int pipe(int fildes[2])
{
	ASSERT_NONNULL(fildes);
	SYSCALL(pipe, int, -1, fildes, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
