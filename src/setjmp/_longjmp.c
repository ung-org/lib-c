#if 0

#include <setjmp.h>

/** restore calling environment **/

void _longjmp(jmp_buf env, int val)
{
	return longjmp(env, val);
}

/***
restores the environment, without manipulation the signal mask, of a previous
call to FUNCTION(_setjmp) and continues execution at the location of the call
to FUNCTION(_setjmp).

All objects previously accessible at the time of the call to FUNCTION(_setjmp)
have the same values. Non-TYPE(volatile) objects of automatic storage duration
that have changed since the call to FUNCTION(_setjmp) have intederminate values.

When execution resumes at the point of the original call to FUNCTION(_setjmp),
the value specified by ARGUMENT(val) is returned. If 0 is specified, then the
return value is 1.
***/

/*
UNDEFINED(There was no previous call to FUNCTION(_setjmp))
UNDEFINED(The function containing the previous call to FUNCTION(_setjmp) is no longer executing)
UNDEFINED(THIS() is called from a nested signal handler)

XOPEN(400)
XOBSOLETE(700, FUNCTION(siglongjmp))
*/


#endif
