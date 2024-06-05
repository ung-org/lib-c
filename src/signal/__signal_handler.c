#include <stddef.h>
#include "_signal.h"
#include "stdlib/_stdlib.h"
#include "_safety.h"

void __signal_handler(int sig)
{
	if (__stdlib.exit_called == QUICK) {
		UNDEFINED("signal %d occured during quick_exit", sig);
	}

	__signal_h.current = sig;
	if (__signal_h.handlers[sig] != NULL) {
		__signal_h.handlers[sig](sig);
	}

	/* TODO: signal number to name */
	if (sig == SIGFPE || sig == SIGILL || sig == SIGSEGV) {
		__signal_h.current = 0;
		UNDEFINED("Signal handler for signal %d returned", sig);
	}

	__signal_h.current = 0;
}

/*
STDC(0)
SIGNAL_SAFE(0)
*/
