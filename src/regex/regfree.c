#include <sys/types.h>
#include <regex.h>
#include <stdlib.h>

void regfree(regex_t * preg)
{
	free(preg);
}

/*
POSIX(2)
*/

