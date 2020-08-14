#ifndef ___GRP_H__
#define ___GRP_H__

#include <sys/types.h>
#include <grp.h>
#include <stdio.h>

#define MAX_MEMBERS 128

struct __grp {
	FILE *db;
	struct group grp;
	struct group * (*getgrent)(void);
	char *members[MAX_MEMBERS];
};

extern struct __grp __grp;

#ifndef _XOPEN_SOURCE
#define setgrent() (__grp.db == NULL ? (void)0 : (void)rewind(__grp.db))

#define endgrent() do { \
	if (__grp.db) { \
		fclose(__grp.db); \
		__grp.db = NULL; \
	} \
} while (0)

#define getgrent __grp.getgrent
#endif

#endif
