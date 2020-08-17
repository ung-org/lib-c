#include <sys/types.h>
#include <unistd.h>

int execv(const char *path, char *const argv[])
{
	extern char **environ;
	return execve(path, argv, environ);
}
/*
POSIX(1)
*/
