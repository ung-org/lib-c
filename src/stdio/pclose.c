#include <stdio.h>
#include "sys/wait.h"

int pclose(FILE * stream)
{
	int status;
	pid_t child = stream->pipe_pid;
	if (child == 0) {
		/* undefined behavior */
	}

	fclose(stream);

	waitpid(pid, &status, 0);
	return status;
}

/*
POSIX(2)
*/

