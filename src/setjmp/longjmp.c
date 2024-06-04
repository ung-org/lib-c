#include <setjmp.h>
#include "_setjmp.h"
#include "_safety.h"

/** restore calling environment **/

_Noreturn void longjmp(jmp_buf env, int val)
{
	extern _Noreturn void ___longjmp(jmp_buf);
	SIGNAL_SAFE(0);
	ASSERT_JMP_BUF(env);

	/* use val if nonzero, otherwise 1 */
	env[0] = val ? val : 1;
	
	for (;;) {
		___longjmp(env);
	}
}

VCHECK_2(longjmp, jmp_buf, int)

/***
restores the environment of a previous call to FUNCTION(setjmp)
and continues execution at the location of the call to FUNCTION(setjmp).

All objects previously accessible at the time of the call to FUNCTION(setjmp)
have the same values. Non-TYPE(volatile) objects of automatic storage duration
that have changed since the call to FUNCTION(setjmp) have intederminate values.

When execution resumes at the point of the original call to FUNCTION(setjmp),
the value specified by ARGUMENT(val) is returned. If 0 is specified, then the
return value is 1.
***/

/*
UNDEFINED(There was no previous call to FUNCTION(setjmp))
UNDEFINED(The function containing the previous call to FUNCTION(setjmp) is no longer executing)
UNDEFINED(THIS() is called from a nested signal handler)
STDC(1)
*/
