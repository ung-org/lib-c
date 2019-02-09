#include <sys/shm.h>

void * shmat(int shmid, const void *shmaddr, int shmflg)
{
	return (void*)shmaddr;
}

/*
XOPEN(4)
*/
