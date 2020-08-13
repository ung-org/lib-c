#include <termios.h>
#include "_assert.h"

speed_t cfgetispeed(const struct termios *termios_p)
{
	ASSERT_NONNULL(termios_p);
	return termios_p->c_iflag & B38400;
}
/*
POSIX(1)
*/
