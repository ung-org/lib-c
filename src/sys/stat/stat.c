#include "sys/types.h"
#include <sys/stat.h>
#include "stdlib.h"
#include "../../_assert.h"
#include "../../_syscall.h"

int stat(const char * restrict path, struct stat * restrict buf)
{
	ASSERT_NONNULL(path);
	ASSERT_NONNULL(buf);

	SYSCALL(stat, int, -1, path, buf, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
