#include "sys/types.h"
#include <regex.h>

int regcomp(regex_t * restrict preg, const char * restrict pattern, int cflags)
{
	(void)preg;
	(void)pattern;
	(void)cflags;
	return 0;
}


/*
POSIX(2)
*/
