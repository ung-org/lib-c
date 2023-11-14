#if 0

#include <grp.h>
#include <stdio.h>
#include "_grp.h"

void setgrent(void)
{
	if (__grp.db != NULL) {
		rewind(__grp.db);
	}
}

/*
XOPEN(400)
*/


#endif
