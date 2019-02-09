#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "errno.h"
#include "nonstd/assert.h"
#include "nonstd/syscall.h"

char * getcwd(char *buf, size_t size)
{
	ASSERT_NONNULL(buf);
	SCNO(scno, "getcwd", NULL);
	int r = __libc.syscall(scno, buf, size);
	if (r < 0) {
		errno = -r;
		return NULL;
	}
	return buf;
}
/*
POSIX(1)
*/
