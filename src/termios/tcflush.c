#if 0

#include <termios.h>
#include "_termios.h"

int tcflush(int fildes, int queue_selector)
{
	return ioctl(fildes, TCFLSH, queue_selector);
}

/*
POSIX(1)
*/


#endif
