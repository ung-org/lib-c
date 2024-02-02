#include "_safety.h"

void va_arg()
{
	UNDEFINED("The va_arg() macro has been suppressed to access an actual function");
}

/*
SIGNAL_SAFE(0)
STDC(0)
*/
