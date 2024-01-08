#include "_signal.h"
#include "_safety.h"

/** set a signal handler **/

void (*signal(int sig, void (*func)(int)))(int)
{
	if (__signal.current != 0 && __signal.current != sig) {
		/* only safe if resetting the current signal handler */
		SIGNAL_SAFE(0);
	}

	if (sig < 0 || sig > NSIGNALS) {
		/* FIXME: should errno be set? */
		return SIG_ERR;
	}

	/* TODO: install __signal_handler as a hook */

	void (*prev)(int) = __signal.handlers[sig];
	__signal.handlers[sig] = func;
	return prev;
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
