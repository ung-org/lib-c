#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "stdio.h"
#include "stdio/_stdio.h"
#include "string.h"

char * ctermid(char * s)
{
	/* TODO: return the empty string if there is no controlling terminal */
	if (s == NULL) {
		s = __stdio.ctermid;
	} else {
		strcpy(s, __stdio.ctermid);
	}

	return s;
}
/*
POSIX(1)
*/
