#include <pwd.h>
#include "_pwd.h"
#include "stdio.h"

void setpwent(void)
{
	if (__pwd.db != NULL) {
		rewind(__pwd.db);
	}
}

/*
XOPEN(400)
*/
