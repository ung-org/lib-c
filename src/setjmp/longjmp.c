#include <setjmp.h>

/** restore calling environment **/
_Noreturn void longjmp(jmp_buf env, int val)
{
	(void)env;
	if (val == 0) {
		val = 1;
	}
	/* Set env.return_register to val */
	/* Load all registers from env */
	for (;;); /* silence _Noreturn function returns warning */
}

/***
THIS() restores the environment of a previous call to FUNCTION(setjmp)
and continues execution at the location of the call to FUNCTION(setjmp).

All objects previously accessible at the time of the call to FUNCTION(setjmp)
have the same values. Non-TYPE(volatile) objects of automatic storage duration
that have changed since the call to FUNCTION(setjmp) have intederminate values.

When execution resumes at the point of the original call to FUNCTION(setjmp),
the value specified by ARGUMENT(val) is returned. If 0 is specified, then the return
value is 1.
***/

/*
UNDEFINED(There was no previous call to FUNCTION(setjmp))
UNDEFINED(The function containing the previous call to FUNCTION(setjmp) is no longer executing)
UNDEFINED(THIS() is called from a nested signal handler)
*/
/*
STDC(1)
*/
