#include <stddef.h>
#include "_signal.h"

#include <stdio.h>

void __signal_handler(int sig)
{
	__signal.current = sig;
	if (__signal.handlers[sig] != NULL) {
		__signal.handlers[sig](sig);
	}
	__signal.current = 0;
}
