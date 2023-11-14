#if 0

#include <stdlib.h>

#ifdef _POSIX_SOURCE
# include <errno.h>
# include <sys/types.h>
# include <unistd.h>
# include <sys/wait.h>
#endif

/** execute a command **/

int system(const char * string)
{
	#ifdef _POSIX_SOURCE
	pid_t pid;
	int status;

	if (string == NULL) {
		return 0;
	}

	/* ignore SIGINT and SIGQUIT */
	/* block SIGCHLD */

	pid = fork();
	if (pid < 0) {
		/* errno comes from fork() */
		return -1;
	}

	if (pid == 0) {
		/* restore signal handlers */
		execl("/bin/sh", "sh", "-c", string, (char *)0);
		_exit(127);
	}
	
	if (waitpid(pid, &status, 0) == -1) {
		errno = ECHILD;
		status = -1;
	}

	/* restore signal handlers */
	if (WIFSIGNALED(status)) {
		
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


#endif
