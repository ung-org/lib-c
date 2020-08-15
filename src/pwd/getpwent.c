#include <sys/types.h>
#include <pwd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>
#include <limits.h>
#include <string.h>
#include "_config.h"
#include "_pwd.h"

#ifndef LINE_MAX
#define LINE_MAX _POSIX2_LINE_MAX
#endif

#ifndef _XOPEN_SOURCE
	static
#endif

struct passwd * getpwent(void)
{
	static char buf[LINE_MAX + 1];
	char *user, *password, *uid, *gid, *gecos, *home, *shell, *nl;

	/* TODO: attempt first calling _PWD_CMD */

	if (__pwd.db == NULL) {
		__pwd.db = fopen(_PWD_DB, "r");
		if (__pwd.db == NULL) {
			return NULL;
		}
	}

	if (fgets(buf, sizeof(buf), __pwd.db) == NULL) {
		endpwent();
		return NULL;
	}

	user = buf;
	if ((password = strchr(buf, ':')) != NULL) {
		*password = '\0';
		password++;
	} else {
		return NULL;
	}

	if ((uid = strchr(password, ':')) != NULL) {
		*uid = '\0';
		uid++;
	} else {
		return NULL;
	}

	if ((gid = strchr(uid, ':')) != NULL) {
		*gid = '\0';
		gid++;
	} else {
		return NULL;
	}

	if ((gecos = strchr(gid, ':')) != NULL) {
		*gecos = '\0';
		gecos++;
	} else {
		return NULL;
	}

	if ((home = strchr(gecos, ':')) != NULL) {
		*home = '\0';
		home++;
	} else {
		return NULL;
	}

	if ((shell = strchr(home, ':')) != NULL) {
		*shell = '\0';
		shell++;
		if ((nl = strchr(shell, '\n')) != NULL) {
			*nl = '\0';
		}
	} else {
		return NULL;
	}

	__pwd.pwd.pw_name = user;
	__pwd.pwd.pw_uid = strtoul(uid, NULL, 10);
	__pwd.pwd.pw_gid = strtoul(gid, NULL, 10);
	__pwd.pwd.pw_dir = home;
	__pwd.pwd.pw_shell = shell;

	return &__pwd.pwd;
}

/*
XOPEN(400)
*/
