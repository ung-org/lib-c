#include <termios.h>

int tcgetattr(int fildes, struct termios *termios_p)
{
	(void)termios_p;
	return fildes;
}
/*
POSIX(1)
*/
