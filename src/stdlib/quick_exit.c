#include <stdlib.h>
#include "_stdlib.h"
#include "_syscall.h"

/** cause normal quick program termination **/
_Noreturn void quick_exit(int status)
{
	SIGNAL_SAFE(1);

	if (__stdlib.exit_called == QUICK) {
		__stdlib.constraint_handler("Undefined behavior: quick_exit() called twice", NULL, 0);
        }
	if (__stdlib.exit_called) {
		__stdlib.constraint_handler("Undefined behavior: quick_exit() called after exit", NULL, 0);
        }
        __stdlib.exit_called = QUICK;

	/* execute all at_quick_exit() registered functions in reverse order */
	struct atexit *ae = &(__stdlib.at_quick_exit);
	while (ae) {
		int i = ae->nfns;
		while (i > 0) {
			ae->fns[--i]();
		}
		ae = ae->prev;
	}

	fflush(NULL);
	// fclose(all the things);
	// remove(all the tmpfile()s);
	/* TODO */
	
	_Exit(status);
}

/***
The fn(quick_exit) function causes the program to terminate normally, returning
the value arg(status) to the host environment.

First, all functions registered by fn(at_quick_exit) are called in the reverse
order in which they were registered.

Then, all open streams with unwritten buffered data are flushed. All open
streams are closed. All temporary files created by fn(tmpfile) are removed.
***/

/* UNSPECIFIED: - */
/* UNDEFINED: calls to fn(longjmp) in a registered handler */
/* UNDEFINED: calling fn(quick_exit) twice */
/* UNDEFINED: calling fn(quick_exit) and fn(exit) twice */
/* UNDEFINED: signals during fn(quick_exit) */
/* IMPLEMENTATION: the successful termination value returned to the host environment when arg(status) is 0 of macro(EXIT_SUCESS) */
/* IMPLEMENTATION: the unsuccessful termination value returned to the host environment when arg(status) is macro(EXIT_FAILURE) */
/* LOCALE: - */

/*
STDC(201112)
*/
