#include <setjmp.h>
#include <sys/types.h>
#include <signal.h>

/** restore calling environment with signal mask **/

void siglongjmp(sigjmp_buf env, int val)
{
	/* restor signal mask */

	return longjmp(env, val);
}

/***
restores the environment, including the saved signal mask (if any), of a
previous call to FUNCTION(sigsetjmp) and continues execution at the location of
the call to FUNCTION(sigsetjmp).

All objects previously accessible at the time of the call to FUNCTION(sigsetjmp)
have the same values. Non-TYPE(volatile) objects of automatic storage duration
that have changed since the call to FUNCTION(sigsetjmp) have intederminate
values.

When execution resumes at the point of the original call to FUNCTION(sigsetjmp),
the value specified by ARGUMENT(val) is returned. If 0 is specified, then the
return value is 1.
***/

/*
UNDEFINED(There was no previous call to FUNCTION(setjmp))
UNDEFINED(The function containing the previous call to FUNCTION(setjmp) is no longer executing)
UNDEFINED(THIS() is called from a nested signal handler)

POSIX(1)
*/
