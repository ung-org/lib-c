#include <termios.h>
#include "_termios.h"

int tcdrain(int fildes)
{
	return ioctl(fildes, TCSBRK, 1);
}
/*
POSIX(1)
*/
