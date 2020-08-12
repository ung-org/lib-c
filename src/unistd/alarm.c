#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "../_syscall.h"

unsigned alarm(unsigned seconds)
{
	#if 0
	SC(unsigned, seconds);
	#else
	return seconds;
	#endif
}
/*
POSIX(1)
*/
