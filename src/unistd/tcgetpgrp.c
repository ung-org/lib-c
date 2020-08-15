#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "termios/_termios.h"

pid_t tcgetpgrp(int fildes)
{
	pid_t pid = -1;
	if (ioctl(fildes, TIOCGPGRP, &pid) == -1) {
		return (pid_t)-1;
	}
	return pid;
}

/*
POSIX(1)
*/
