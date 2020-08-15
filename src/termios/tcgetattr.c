#include <termios.h>
#include "_termios.h"

int tcgetattr(int fildes, struct termios *termios_p)
{
	int ret = -1;
	struct kernel_termios kt;
	utok(kt, *termios_p);
	ret = ioctl(fildes, TCGETS, &kt);
	ktou(*termios_p, kt);
	return ret;
}

/*
POSIX(1)
*/
