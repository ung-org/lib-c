#include "time.h"
#include <sys/times.h>

clock_t times(struct tms *buffer)
{
	(void)buffer;
	return (clock_t)-1;
}
/*
POSIX(1)
*/
