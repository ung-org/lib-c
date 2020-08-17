#include <sys/types.h>
#include <unistd.h>
#include <errno.h>

int execvp(const char *file, char *const argv[])
{
	extern char **environ;
	/* search $PATH for file */
	execve(file, argv, environ);
	if (errno == ENOEXEC) {
		/* stuff /bin/sh in front */
		char sh[] = "/bin/sh";
		return execve(sh, argv, environ);
	}
	return -1;
}
/*
POSIX(1)
*/
