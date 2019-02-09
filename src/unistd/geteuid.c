#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/syscall.h"

uid_t geteuid(void)
{
	SCNOFAIL();
}
/*
POSIX(1)
*/
