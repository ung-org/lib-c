#if 0

#include <stddef.h>
#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>

int dup(int fildes)
{
	return fcntl(fildes, F_DUPFD, 0);
}
/*
POSIX(1)
*/


#endif
