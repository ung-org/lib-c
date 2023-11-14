#if 0

#include <stddef.h>
#include <sys/types.h>
#include <unistd.h>
#include <limits.h>
#include <stdarg.h>

int execle(const char *path, const char *arg0, ... /*, (char *)0, char *const envp[] */)
{
	char *argv[_POSIX_ARG_MAX], *arg = (char*)arg0;
	char **envp = NULL;
	int argc = 0;

	va_list ap;
	va_start(ap, arg0);
	do {
		argv[argc++] = arg;
	} while ((arg = va_arg(ap, char *)) != NULL);
	envp = va_arg(ap, char **);
	va_end(ap);

	argv[argc] = NULL;
	return execve(path, argv, envp);
}
/*
POSIX(1)
*/


#endif
