#include "sys/types.h"
#include <pwd.h>
#include "stddef.h"

struct passwd * getpwnam(const char * name)
{
	(void)name;
	return NULL;
}

/*
POSIX(1)
*/
