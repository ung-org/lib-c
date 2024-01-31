#if 0

#include <sys/types.h>
#include <unistd.h>
#include "_safety.h"
#include "_syscall.h"

int unlink(const char *path)
{
	ASSERT_NONNULL(path);
	SYSCALL(unlink, int, -1, path, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/


#endif
