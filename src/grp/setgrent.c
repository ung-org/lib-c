#include <grp.h>
#include "_grp.h"
#include "stdio.h"

void setgrent(void)
{
	if (__grp.db != NULL) {
		rewind(__grp.db);
	}
}

/*
XOPEN(400)
*/
