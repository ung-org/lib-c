#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "errno.h"
#include "nonstd/syscall.h"

int pause(void)
{
	SC0(int);
}
/*
POSIX(1)
*/
