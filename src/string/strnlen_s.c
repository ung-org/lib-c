#include <string.h>
#include "_safety.h"

size_t strnlen_s(const char *s, size_t maxsize)
{
	SIGNAL_SAFE(0);
	(void)s;
	return maxsize;
}

/*
CEXT1(201112)
*/
