#include "sys/types.h"
#include <pwd.h>
#include "stddef.h"
#include "stdio.h"
#include "limits.h"
#include "string.h"
#include "_config.h"

#ifndef LINE_MAX
#define LINE_MAX _POSIX2_LINE_MAX
#endif

struct passwd * getpwnam(const char * name)
{
	static char buf[LINE_MAX + 1];
	static struct passwd pwd = { 0 };
	char *user, *password, *uid, *gid, *gecos, *home, *shell, *nl;

	/* TODO: attempt calling first _PWD_CMD */

	FILE *db = fopen(_PWD_DB, "r");
	if (db == NULL) {
		return NULL;
	}

	while (fgets(buf, sizeof(buf), db) != NULL) {
		user = buf;
		if ((password = strchr(buf, ':')) != NULL) {
			*password = '\0';
			password++;
		} else {
			continue;
		}

		if (strcmp(user, name) != 0) {
			continue;
		}

		if ((uid = strchr(password, ':')) != NULL) {
			*uid = '\0';
			uid++;
		} else {
			continue;
		}

		if ((gid = strchr(uid, ':')) != NULL) {
			*gid = '\0';
			gid++;
		} else {
			continue;
		}

		if ((gecos = strchr(gid, ':')) != NULL) {
			*gecos = '\0';
			gecos++;
		} else {
			continue;
		}

		if ((home = strchr(gecos, ':')) != NULL) {
			*home = '\0';
			home++;
		} else {
			continue;
		}

		if ((shell = strchr(home, ':')) != NULL) {
			*shell = '\0';
			shell++;
			if ((nl = strchr(shell, '\n')) != NULL) {
				*nl = '\0';
			}
		} else {
			continue;
		}

		pwd.pw_name = user;
		pwd.pw_uid = strtoul(gid, NULL, 10);
		pwd.pw_gid = strtoul(gid, NULL, 10);
		pwd.pw_dir = home;
		pwd.pw_shell = shell;
		break;
	}

	fclose(db);

	if (strcmp(name, pwd.pw_name) == 0) {
		return &pwd;
	}

	return NULL;
}

/*
POSIX(1)
*/
