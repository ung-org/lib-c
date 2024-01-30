#include <time.h>
#include "_safety.h"

char *strptime(const char *restrict buf, const char *restrict format, struct tm *restrict tm)
{
	SIGNAL_SAFE(0);
	return (char*)buf;
}

/*
XOPEN(4)
*/
