#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include "_stdio.h"

int pclose(FILE * stream)
{
	int status;
	pid_t child = stream->pipe_pid;
	if (child == 0) {
		/* undefined behavior */
	}

	fclose(stream);

	waitpid(child, &status, 0);
	return status;
}

/*
POSIX(2)
*/

