#ifndef ___PWD_H__
#define ___PWD_H__

#include <sys/types.h>
#include <pwd.h>
#include <stdio.h>

struct __pwd {
	FILE *db;
	struct passwd pwd;
	struct passwd * (*getpwent)(void);
};

extern struct __pwd __pwd;

#ifndef _XOPEN_SOURCE
#define setpwent() (__pwd.db == NULL ? (void)0 : (void)rewind(__pwd.db))

#define endpwent() do { \
	if (__pwd.db) { \
		fclose(__pwd.db); \
		__pwd.db = NULL; \
	} \
} while (0)

#define getpwent __pwd.getpwent
#endif

#endif
