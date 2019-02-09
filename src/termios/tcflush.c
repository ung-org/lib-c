#include <termios.h>

int tcflush(int fildes, int queue_selector)
{
	(void)queue_selector;
	return fildes;
}
/*
POSIX(1)
*/
