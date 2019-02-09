#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/syscall.h"

int close(int fildes)
{
	SC(int, fildes);
}
/*
POSIX(1)
*/
