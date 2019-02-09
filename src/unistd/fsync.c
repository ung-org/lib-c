#include <unistd.h>
#include "__nonstd.h"

int fsync(int fildes)
{
	__POSIX_MIN(199309L);
	__POSIX_OPTION(_FSYNC);
	__XOPEN_MIN(4);
	__SC(int, fildes);
}

/*
XOPEN(4)
POSIX(199309)
*/
