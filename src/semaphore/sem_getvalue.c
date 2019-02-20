#include <semaphore.h>

int sem_getvalue(sem_t * restrict sem, int * restrict sval)
{
	return *sval;
}

/*
POSIX(199309)
LINK(rt)
*/
