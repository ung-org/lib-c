#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/assert.h"
#include "nonstd/syscall.h"

int unlink(const char *path)
{
	ASSERT_NONNULL(path);
	SYSCALL("unlink", int, -1, path, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
