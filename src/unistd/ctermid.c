#if 0

#include <stddef.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>

char * ctermid(char * s)
{
	static char ctid[L_ctermid + 1] = "/dev/tty";

	/* TODO: return the empty string if there is no controlling terminal */
	if (s == NULL) {
		s = ctid;
	} else {
		strcpy(s, ctid);
	}

	return s;
}
/*
POSIX(1)
*/


#endif
