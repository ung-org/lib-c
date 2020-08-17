#include <sys/types.h>
#include <termios.h>

pid_t tcgetsid(int fildes)
{
	pid_t pid = -1;
	if (ioctl(fildes, TIOCGSID, &pid) == -1) {
		return (pid_t)-1;
	}
	return pid;
}

/*
XOPEN(400)
POSIX(200809)
*/
