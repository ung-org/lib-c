#if 0

#include <termios.h>
#include "_termios.h"

int tcflow(int fildes, int action)
{
	return ioctl(fildes, TCXONC, action);
}

/*
POSIX(1)
*/


#endif
