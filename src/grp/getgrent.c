#if 0

#if ((!defined _POSIX_C_SOURCE) || (_POSIX_C_SOURCE < 2))
#undef _POSIX_C_SOURCE
#define _POSIX_C_SOURCE 2
#endif

#include <sys/types.h>
#include <grp.h>
#include <stdlib.h>
#include <stdio.h>
#include <limits.h>
#include <string.h>
#include "_config.h"
#include "_grp.h"

#ifndef LINE_MAX
#define LINE_MAX _POSIX2_LINE_MAX
#endif

#ifndef _XOPEN_SOURCE
static
#endif

struct group * getgrent(void)
{
	static char buf[LINE_MAX + 1];
	char *group, *password, *gid, *members, *nl;
	int member = 0;

	/* TODO: attempt first calling _GRP_CMD */

	if (__grp.db == NULL) {
		__grp.db = fopen(_GRP_DB, "r");
		if (__grp.db == NULL) {
			return NULL;
		}
	}

	if (fgets(buf, sizeof(buf), __grp.db) == NULL) {
		endgrent();
		return NULL;
	}

	group = buf;
	if ((password = strchr(buf, ':')) != NULL) {
		*password = '\0';
		password++;
	} else {
		return NULL;
	}

	if ((gid = strchr(password, ':')) != NULL) {
		*gid = '\0';
		gid++;
	} else {
		return NULL;
	}

	if ((members = strchr(gid, ':')) != NULL) {
		*members = '\0';
		members++;
		if ((nl = strchr(members, '\n')) != NULL) {
			*nl = '\0';
		}
	} else {
		return NULL;
	}

	__grp.grp.gr_name = group;
	__grp.grp.gr_gid = strtoul(gid, NULL, 10);

	while (members && *members) {
		__grp.members[member++] = members;
		members = strchr(members, ',');
		if (members) {
			*members = '\0';
			members++;
		}
	}

	__grp.members[member] = NULL;

	__grp.grp.gr_mem = __grp.members;

	return &__grp.grp;
}

/*
XOPEN(400)
*/


#endif
