#include <threads.h>
#include <pthread.h>

_Noreturn void thrd_exit(int res)
{
	pthread_exit(&res);
}

/*
STDC(201112)
*/
