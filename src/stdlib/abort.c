#include <stdlib.h>
#ifdef _POSIX_SOURCE
#include "sys/types.h"
#endif
/*
#include "signal.h"
*/

#define __SIGNAL_H__
#define SIGABRT
#include "ungol/signal.h"
extern void raise(int);

/** cause abnormal program termination **/

_Noreturn void abort(void)
{
	for (;;) {
		raise(SIGABRT);
	}
}

/***
causes the program to terminate abnormally, unless the
signal CONSTANT(SIGABRT) is caught and the signal handler continues program
execution.
***/

/*
IMPLEMENTATION(whether open output streams are flushed)
IMPLEMENTATION(whether open streams are closed)
IMPLEMENTATION(whether temporary files are removed)
IMPLEMENTATION(the value of unsuccessful termination returned to the host environment)
STDC(1)
*/
