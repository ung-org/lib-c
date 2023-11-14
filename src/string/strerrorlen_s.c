#if 0

#include <string.h>

size_t strerrorlen_s(errno_t errnum)
{
	__C_EXT(1, 201112L);
	char buffer[1024];
	strerror_s(buffer, sizeof(buffer), errnum);
	return strlen(buffer);
}

/*
CEXT1(201112)
*/


#endif
