#if defined _POSIX_SOURCE || defined _POSIX_C_SOURCE || defined _XOPEN_SOURCE
#include "sys/types.h"
#include "unistd.h"
#else
#define kill(pid, sig) (sig ? -1 : -1)
#endif
#include <signal.h>

/** send a signal to the current program **/
int raise(int sig)
{
	/*
	RETURN_FAILURE(NONZERO);
	RETURN_SUCCESS(0);
	*/
	#if (defined _POSIX_C_SOURCE && _POSIX_C_SOURCE >= 199506L)
	return pthread_kill(pthread_self(), sig);
	#else
	return kill(getpid(), sig);
	#endif
}

/***
sends the signal ARGUMENT(sig) to the current program.
***/
/*
STDC(1)
*/
