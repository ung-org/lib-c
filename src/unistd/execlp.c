#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "stdarg.h"
#include "limits.h"

int execlp(const char *file, const char *arg0, ...  /*, (char *0) */)
{
	char *argv[_POSIX_ARG_MAX], *arg = (char*)arg0;
	int argc = 0;

	va_list ap;
	va_start(ap, arg0);
	do {
		argv[argc++] = arg;
	} while ((arg = va_arg(ap, char *)) != NULL);
	va_end(ap);

	argv[argc] = NULL;
	return execvp(file, argv);
}
/*
POSIX(1)
*/
