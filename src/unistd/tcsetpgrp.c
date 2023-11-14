#if 0

#include <sys/types.h>
#include <unistd.h>
#include <termios/_termios.h>

int tcsetpgrp(int fildes, pid_t pgid_id)
{
	return ioctl(fildes, TIOCSPGRP, &pgid_id);
}

/*
POSIX(1)
*/


#endif
