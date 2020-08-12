#include "sys/types.h"
#include <unistd.h>
#include "../_assert.h"
#include "../_syscall.h"

char * getcwd(char *buf, size_t size)
{
	ASSERT_NONNULL(buf);
	SYSCALL(getcwd, char *, NULL, buf, size, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
