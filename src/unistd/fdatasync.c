#include <unistd.h>

int fdatasync(int fildes)
{
	__SC(int, fildes);
}

/*
POSIX(199309)
*/
