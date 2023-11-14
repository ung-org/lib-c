#if 0

#include "_syscall.h"

int pause(void)
{
	SYSCALL(pause, int, -1, 0, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/


#endif
