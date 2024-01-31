#include <string.h>
#include "_safety.h"

size_t strerrorlen_s(errno_t errnum)
{
	SIGNAL_SAFE(0);
	char buffer[1024];
	strerror_s(buffer, sizeof(buffer), errnum);
	return strlen(buffer);
}

CHECK_1(size_t, 0, strerrorlen_s, errno_t)

/*
CEXT1(201112)
*/
