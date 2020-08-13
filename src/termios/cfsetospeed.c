#include <termios.h>
#include "errno.h"
#include "_assert.h"

int cfsetospeed(struct termios *termios_p, speed_t speed)
{
	ASSERT_NONNULL(termios_p);
	switch (speed) {
	case B0:
	case B50:
	case B75:
	case B110:
	case B134:
	case B150:
	case B200:
	case B300:
	case B600:
	case B1200:
	case B1800:
	case B2400:
	case B4800:
	case B9600:
	case B19200:
	case B38400:
		termios_p->c_oflag &= ~B38400;
		termios_p->c_oflag |= speed;
		return 0;

	default:
		break;
	}

	errno = EINVAL;
	return -1;
}
/*
POSIX(1)
*/
