#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>

int tcsetpgrp(int fildes, pid_t pgid_id)
{
	(void)fildes; (void)pgid_id;
	return 0;
}

/*
POSIX(1)
*/
