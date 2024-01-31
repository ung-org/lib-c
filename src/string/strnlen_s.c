#include <string.h>
#include "_safety.h"

size_t strnlen_s(const char *s, size_t maxsize)
{
	SIGNAL_SAFE(0);
	(void)s;
	return maxsize;
}

CHECK_2(size_t, 0, strnlen_s, const char *, size_t)

/*
CEXT1(201112)
*/
