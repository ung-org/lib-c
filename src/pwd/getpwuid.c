#include <sys/types.h>
#include <pwd.h>
#include "_pwd.h"

struct passwd * getpwuid(uid_t uid)
{
	struct passwd *pwd = NULL;
	setpwent();

	while ((pwd = getpwent()) != NULL) {
		if (pwd->pw_uid == uid) {
			endpwent();
			return pwd;
		}
	}

	endpwent();
	return NULL;
}

/*
POSIX(1)
*/
