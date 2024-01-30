#ifndef _POSIX_SOURCE
#define _POSIX_SOURCE
#define POSIX_FORCED
#endif

//#include <sys/types.h>
#include <signal.h>
//#include <unistd.h>

#ifdef POSIX_FORCED
#include "_syscall.h"
#define kill(pid, sig)	__scall2(kill, pid, sig)
#define getpid()	__scall0(getpid)
#endif

#include "_safety.h"

/** send a signal to the current program **/

int raise(int sig)
{
	SIGNAL_SAFE(0);
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
