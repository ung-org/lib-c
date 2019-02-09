#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/syscall.h"

pid_t getppid(void)
{
	SCNOFAIL();
}
/*
POSIX(1)
*/
