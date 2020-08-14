#include <grp.h>
#include "_grp.h"
#include "stdio.h"

void endgrent(void)
{
	if (__grp.db != NULL) {
		fclose(__grp.db);
		__grp.db = NULL;
	}
}

/*
XOPEN(400)
*/
