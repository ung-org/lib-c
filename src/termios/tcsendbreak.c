#include <termios.h>

int tcsendbreak(int fildes, int duration)
{
	(void)duration;
	return fildes;
}
/*
POSIX(1)
*/
