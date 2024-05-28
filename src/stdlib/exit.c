#include <stdlib.h>
#include <stdio.h>
#include "_stdlib.h"
#include "_syscall.h"

#include "_forced/_Exit.h"

/** cause normal program termination **/
_Noreturn void exit(int status)
{
	struct atexit *ae = &(__stdlib.atexit);

	SIGNAL_SAFE(0);

	if (__stdlib.exit_called == QUICK) {
		__stdlib.constraint_handler("Undefined behavior: exit() called after quick_exit()", NULL, 0);
	}
	if (__stdlib.exit_called == REGULAR) {
		__stdlib.constraint_handler("Undefined behavior: exit() called twice", NULL, 0);
	}
	__stdlib.exit_called = REGULAR;

	/* execute all atexit() registered functions in reverse order */
	while (ae) {
		int i = ae->nfns;
		while (i > 0) {
			ae->fns[--i]();
		}
		ae = ae->prev;
	}

	fflush(NULL);
	
	_Exit(status);
}

/***
causes the program to terminate normally, returning the
value ARGUMENT(status) to the host environment.

First, all functions registered by FUNCTION(atexit) are called in the reverse
order in which they were registered.

Then, all open streams with unwritten buffered data are flushed. All open
streams are closed. All temporary files created by FUNCTION(tmpfile) are
removed.
***/

/*
IMPLEMENTATION(The successful termination value returned to the host environment when ARGUMENT(status) is 0 or CONSTANT(EXIT_SUCESS))
IMPLEMENTATION(The unsuccessful termination value returned to the host environment when ARGUMENT(status) is CONSTANT(EXIT_FAILURE))
*/

/*
STDC(1)
*/
