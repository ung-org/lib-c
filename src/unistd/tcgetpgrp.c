#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>

pid_t tcgetpgrp(int fildes)
{
	(void)fildes;
	return 0;
}

/*
POSIX(1)
*/
