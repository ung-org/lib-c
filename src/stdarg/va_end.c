#include "_safety.h"

void va_end()
{
	__undefined("The va_end() macro has been suppressed to access an actual function");
}

/*
SIGNAL_SAFE(0)
STDC(0)
*/
