#include <termios.h>
#include <errno.h>
#include "_termios.h"

int tcsetattr(int fildes, int optional_actions, struct termios *termios_p)
{
	int ret = -1;
	struct kernel_termios kt;
	utok(kt, *termios_p);

	switch (optional_actions) {
	case TCSANOW:
		ret = ioctl(fildes, TCSETS, &kt);
		break;

	case TCSADRAIN:
		ret = ioctl(fildes, TCSETSW, &kt);
		break;

	case TCSAFLUSH:
		ret = ioctl(fildes, TCSETSF, &kt);
		break;

	default:
		errno = EINVAL;
		return -1;
	}

	ktou(*termios_p, kt);
	return ret;
}
/*
POSIX(1)
*/
