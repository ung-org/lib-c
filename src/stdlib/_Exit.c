#include <stdlib.h>
#include "nonstd/syscall.h"

/** cause normal program termination without handlers **/
_Noreturn void _Exit(int status)
{
	__syscall("_exit", status);
	for (;;);
}

/***
The fn(exit) function causes the program to terminate normally, returning the
value arg(status) to the host environment.

No functions registered by fn(atexit) or fn(at_quick_exit) are called.
***/

/* UNSPECIFIED: - */
/* UNDEFINED: - */
/* IMPLEMENTATION: the successful termination value returned to the host environment when arg(status) is 0 of macro(EXIT_SUCESS) */
/* IMPLEMENTATION: the unsuccessful termination value returned to the host environment when arg(status) is macro(EXIT_FAILURE) */
/* IMPLEMENTATION: whether open streams are flushed */
/* IMPLEMENTATION: whether open streams are closed */
/* IMPLEMENTATION: whether temporary files are removed */
/* LOCALE: - */

/*
STDC(199901)
*/
