#include <stdio.h>
#include "_format.h"

int vscanf(const char * restrict format, va_list arg)
{
	SIGNAL_SAFE(0);
	return vfscanf(stdin, format, arg);
}

/*
STDC(199901)
*/
