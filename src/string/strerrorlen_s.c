#include <string.h>
#include "_safety.h"

size_t strerrorlen_s(errno_t errnum)
{
	SIGNAL_SAFE(0);
	char buffer[1024];
	strerror_s(buffer, sizeof(buffer), errnum);
	return strlen(buffer);
}

/*
CEXT1(201112)
*/
