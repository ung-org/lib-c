#include <termios.h>
#include "nonstd/assert.h"

speed_t cfgetospeed(const struct termios *termios_p)
{
	ASSERT_NONNULL(termios_p);
	return termios_p->c_oflag; /* FIXME */
}
/*
POSIX(1)
*/
