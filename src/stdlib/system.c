#include <stdlib.h>

#if defined _POSIX_SOURCE || defined _POSIX_C_SOURCE || defined _XOPEN_SOURCE
# include "errno.h"
# include "sys/types.h"
# include "unistd.h"
# include "sys/wait.h"
# define USE_FORK
#endif

/** execute a command **/

int system(const char * string)
{
	#if defined USE_FORK
	pid_t pid;
	int status;

	if (string == NULL) {
		return 0;
	}

	pid = fork();
	if (pid < 0) {
		/* errno comes from fork() */
		return -1;
	}

	if (pid == 0) {
		execl("/bin/sh", "sh", "-c", string, (char *)0);
		_exit(1);
	}
	
	if (waitpid(pid, &status, 0) == -1) {
		errno = ECHILD;
		return -1;
	}

	return status;

	#else
	(void)string;
	return 1;
	#endif
}

/***
runs the command ARGUMENT(string) using the host environment's command
processor.

Specifying CONSTANT(NULL) for ARGUMENT(string) tests whether a command
processor is available.
***/

/*
IMPLEMENTATION(How the command processor is invoked)
IMPLEMENTATION(The return value when ARGUMENT(string) is not CONSTANT(NULL))
RETURN(NONZERO, If ARGUMENT(string) is CONSTANT(NULL), a command processor is available)
RETURN(0, If ARGUMENT(string) is CONSTANT(NULL), a command processor is not available)
STDC(1)
*/
