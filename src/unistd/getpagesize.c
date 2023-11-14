#if 0

#include <unistd.h>

int getpagesize(void)
{
	return sysconf(_SC_PAGE_SIZE);
}

/*
XOPEN(400,600)
*/


#endif
