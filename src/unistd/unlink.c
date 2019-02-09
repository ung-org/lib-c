#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/assert.h"
#include "nonstd/syscall.h"

int unlink(const char *path)
{
	ASSERT_NONNULL(path);
	SC(int, path);
}
/*
POSIX(1)
*/
