#include <stdlib.h>
#include <limits.h>
#include <stddef.h>
#include "_stdlib.h"

/** cause normal quick program termination **/
_Noreturn void quick_exit(int status)
{
	/* execute all at_quick_exit() registered functions in reverse order */
	while (__stdlib.at_quick_exit) {
		__stdlib.at_quick_exit->fn();
		__stdlib.at_quick_exit = __stdlib.at_quick_exit->prev;
	}

	fflush(NULL);
	// fclose(all the things);
	// remove(all the tmpfile()s);
	/* TODO */
	/* __syscall(exit, status); */
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
