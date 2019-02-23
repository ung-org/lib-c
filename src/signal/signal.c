#if defined _POSIX_SOURCE || defined _POSIX_C_SOURCE || defined _XOPEN_SOURCE
#include "sys/types.h"
#endif

#include <signal.h>

/** set a signal handler **/
void (*signal(int sig, void (*func)(int)))(int)
{
	(void)sig;
	/* TODO */
	/*
	RETURN_SUCCESS(a pointer to the signal handler);
	RETURN_FAILURE(CONSTANT(SIG_ERR), the request could not be honored);
	*/
	return func;
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
*/
/*
STDC(1)
*/
