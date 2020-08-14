#include <pwd.h>
#include "_pwd.h"
#include "stdio.h"

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
