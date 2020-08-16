#ifndef _POSIX_SOURCE
#define _POSIX_SOURCE
#define POSIX_FORCED
#endif

#include <sys/types.h>
#include <stddef.h>
#include <signal.h>

/* FIXME: Linux specific, doesn't even work */
#undef SA_RESTART
#define SA_RESTART 0x10000000

/** set a signal handler **/

void (*signal(int sig, void (*func)(int)))(int)
{
	struct sigaction sa = { 0 }, osa = { 0 };
	sa.sa_handler = func;
	sigemptyset(&sa.sa_mask);
	sigaddset(&sa.sa_mask, sig);
	sa.sa_flags = SA_RESTART;

	if (sigaction(sig, &sa, &osa) != 0) {
		return SIG_ERR;
	}

	/*
	RETURN_SUCCESS(a pointer to the signal handler);
	RETURN_FAILURE(CONSTANT(SIG_ERR), the request could not be honored);
	*/

	return osa.sa_handler;
}

/***
sets the signal handler for the signal specified by ARGUMENT(sig) to
ARGUMENT(func).

Specifying CONSTANT(SIG_DFL) for ARGUMENT(func) resets the signal handler
to its default behavior.

Specifying CONSTANT(SIG_IGN) for ARGUMENT(func) causes the signal
ARGUMENT(sig) to be ignored.

Otherwise, ARGUMENT(func) must be a pointer to a function which takes a
single TYPE(int) argument and does not return a value. 
***/

/*
UNDEFINED(A signal handler for CONSTANT(SIGFPE) returns)
UNDEFINED(A signal handler calling standard library functions other than THIS() if the signal occurs as other than as a result of calling FUNCTION(abort) or FUNCTION(raise))
UNDEFINED(FIXME: some function calls from signal handlers)
IMPLEMENTATION(Whether signal blocking is performed when a signal occurs)
IMPLEMENTATION(Other signals corresponding to computation exceptions for which signal handlers must not return)
STDC(1)
*/
