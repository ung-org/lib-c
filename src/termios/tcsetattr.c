#include <termios.h>

int tcsetattr(int fildes, int optional_actions, struct termios *termios_p)
{
	(void)optional_actions; (void)termios_p;
	return fildes;
}
/*
POSIX(1)
*/
