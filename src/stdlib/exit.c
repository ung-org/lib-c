#include <stdlib.h>
#include "limits.h"
#include "stddef.h"
#include "nonstd/internal.h"
#include "nonstd/syscall.h"

/** cause normal program termination **/
_Noreturn void exit(int status)
{
	struct atexit *ae = __libc(ATEXIT);

	/* execute all atexit() registered functions in reverse order */
	while (ae) {
		int i = ae->nfns;
		while (i > 0) {
			ae->fns[--i]();
		}
		ae = ae->prev;
	}

	/* close all open files */
	/*
	while (__libc.stdio.lastfile) {
		fclose(__libc.stdio.lastfile);
	}
	*/
	
	(void)status;
	__syscall(((long (*)(char*))__libc(SYSCALL_LOOKUP))("exit"), status);
	for (;;); /* quiet _Noreturn functions returns warning */
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
