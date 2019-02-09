#include <termios.h>
#include "nonstd/assert.h"

speed_t cfgetispeed(const struct termios *termios_p)
{
	ASSERT_NONNULL(termios_p);
	return termios_p->c_iflag; /* FIXME */
}
/*
POSIX(1)
*/
