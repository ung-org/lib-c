#include <errno.h>
#include <sys/types.h>
#include <unistd.h>
#include "_syscall.h"

int execve(const char *path, char *const argv[], char *const envp[])
{
	SYSCALL_NUMBER(scno, execve, -1);
	errno = -__syscall(scno, path, argv, envp);
	return -1;
}
/*
POSIX(1)
*/
