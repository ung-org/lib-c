#include <termios.h>

int tcflow(int fildes, int action)
{
	(void)fildes;
	return action;
}

/*
POSIX(1)
*/
