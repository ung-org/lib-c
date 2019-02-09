#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>

char *ttyname(int fildes)
{
	(void)fildes;
	return NULL;
}
/*
POSIX(1)
*/
