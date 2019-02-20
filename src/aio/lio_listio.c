#include <aio.h>

int lio_listio(int mode, struct aiocb * const list[restrict], int nent, struct sigevent * restrict sig)
{
	return -1;
}

/*
POSIX(199309)
LINK(rt)
*/
