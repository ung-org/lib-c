#if 0

#include <sys/types.h>
#include <grp.h>
#include <string.h>
#include "_grp.h"

struct group * getgrnam(const char * name)
{
	struct group *grp = NULL;
	setgrent();

	while ((grp = getgrent()) != NULL) {
	if (strcmp(name, grp->gr_name) == 0) {
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


#endif
