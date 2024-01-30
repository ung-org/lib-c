#include <stddef.h>
#include "_signal.h"
#include "_safety.h"

void __signal_handler(int sig)
{
	__signal.current = sig;
	if (__signal.handlers[sig] != NULL) {
		__signal.handlers[sig](sig);
	}
	/* TODO: if signal is fatal, trigger UB */
	__signal.current = 0;
}

/*
STDC(0)
SIGNAL_SAFE(0)
*/
