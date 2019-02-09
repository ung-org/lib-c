#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "nonstd/syscall.h"

int setuid(uid_t uid)
{
	SC(int, uid);
}
/*
POSIX(1)
*/
