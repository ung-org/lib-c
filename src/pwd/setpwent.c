#if 0

#include <pwd.h>
#include <stdio.h>
#include "_pwd.h"

void setpwent(void)
{
	if (__pwd.db != NULL) {
		rewind(__pwd.db);
	}
}

/*
XOPEN(400)
*/


#endif
