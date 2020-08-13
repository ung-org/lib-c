#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "_syscall.h"

int pause(void)
{
	SYSCALL(pause, int, -1, 0, 0, 0, 0, 0, 0);
}
/*
POSIX(1)
*/
