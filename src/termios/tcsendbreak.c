#if 0

#include <termios.h>
#include "_termios.h"

int tcsendbreak(int fildes, int duration)
{
	return ioctl(fildes, TCSBRKP, duration);
}
/*
POSIX(1)
*/


#endif
