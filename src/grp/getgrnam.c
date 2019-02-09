#include "sys/types.h"
#include <grp.h>
#include "stddef.h"

struct group * getgrnam(const char * name)
{
	(void)name;
	return NULL;
}

/*
POSIX(1)
*/
