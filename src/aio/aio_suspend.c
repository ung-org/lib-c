#include <aio.h>

int aio_suspend(const struct aiocb * const list[], int nent, const struct timespec * timeout)
{
	return -1;
}

/*
POSIX(199309)
LINK(rt)
*/
