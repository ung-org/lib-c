#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "stdio.h"
#include "string.h"
#include "pwd.h"

char *cuserid(char *s)
{
	static char userid[L_cuserid];

	struct passwd *pwd = getpwuid(geteuid());

	if (s == NULL) {
		s = userid;
	}

	if (pwd == NULL) {
		s[0] = '\0';
	} else {
		strcpy(s, pwd->pw_name);
	}
	
	return s;
}

/*
TODO: verify
POSIX(1, 199506)
*/
