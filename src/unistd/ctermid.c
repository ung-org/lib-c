#include "stddef.h"
#include "sys/types.h"
#include <unistd.h>
#include "stdio.h"
#include "string.h"

char * ctermid(char * s)
{
	static char termid[L_ctermid] = "/dev/tty";
	
	if (s == NULL) {
		s = termid;
	} else {
		strcpy(s, termid);
	}

	return s;
}
/*
POSIX(1)
*/
