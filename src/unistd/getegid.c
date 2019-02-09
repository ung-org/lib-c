#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/syscall.h"

gid_t getegid(void)
{
	SCNOFAIL();
}
/*
POSIX(1)
*/
