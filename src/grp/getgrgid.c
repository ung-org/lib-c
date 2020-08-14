#include "sys/types.h"
#include <grp.h>
#include "_grp.h"

struct group * getgrgid(gid_t gid)
{
	struct group *grp = NULL;
	setgrent();

	while ((grp = getgrent()) != NULL) {
		if (grp->gr_gid == gid) {
			endgrent();
			return grp;
		}
	}

	endgrent();
	return NULL;
}

/*
POSIX(1)
*/
