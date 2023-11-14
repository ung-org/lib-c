#if 0

#include <pwd.h>
#include <stdio.h>
#include "_pwd.h"

void endpwent(void)
{
	if (__pwd.db != NULL) {
		fclose(__pwd.db);
		__pwd.db = NULL;
	}
}

/*
XOPEN(400)
*/


#endif
