#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/syscall.h"

int execve(const char *path, char *const argv[], char *const envp[])
{
	SCNO(scno, "execve", -1);
	errno = -__libc.syscall(scno, path, argv, envp);
	return -1;
}
/*
POSIX(1)
*/
