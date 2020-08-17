#include <stdio.h>
#include <string.h>
#include <errno.h>

#include <sys/types.h>
#include <unistd.h"

#include "_assert.h"
#include "_stdio.h"

#ifdef __STDC_VERSION__
#include <wchar.h>
#endif

FILE * popen(const char * command, const char * mode)
{
	ASSERT_NONNULL(command);
	ASSERT_NONNULL(mode);
	
	int direction = 0;
	if (!strcmp(mode, "w")) {
		direction = 1;
	} else if (strcmp(mode, "r")) {
		errno = EINVAL;
		return NULL;
	}

	int pd[2];
	if (pipe(pd) == -1) {
		return NULL;
	}

	pid_t child = fork();
	if (child == -1) {
		close(pd[0]);
		close(pd[1]);
		return NULL;
	} else if (child == 0) {
		if (direction == 1) {
			dup2(pd[0], STDIN_FILENO);
		} else {
			dup2(pd[1], STDOUT_FILENO);
		}
		close(pd[0]);
		close(pd[1]);
		execl("/bin/sh", "sh", "-c", command, (char *)0);
		return NULL;
	}

	FILE *p = NULL;
	if (direction == 1) {
		p = fdopen(pd[1], "w");
	} else {
		p = fdopen(pd[0], "r");
	}

	if (p == NULL) {
		return NULL;
	}

	#if defined __STDC_VERSION__
	fwide(p, -1);
	#endif

	p->pipe_pid = child;
	return p;
}

/*
POSIX(2)
*/

