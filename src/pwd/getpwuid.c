#include "sys/types.h"
#include <pwd.h>
#include "stddef.h"

struct passwd * getpwuid(uid_t uid)
{
	(void)uid;
	return NULL;
}

/*
POSIX(1)
*/
