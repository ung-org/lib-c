#include "sys/types.h"
#include <grp.h>
#include "stddef.h"

struct group * getgrgid(gid_t gid)
{
	(void)gid;
	return NULL;
}

/*
POSIX(1)
*/
