#include <stdio.h>
#include "_stdio.h"

int vscanf_s(const char * restrict format, va_list arg)
{
	SIGNAL_SAFE(0);
	return vfscanf(stdin, format, arg);
}

/*
CEXT1(201112)
*/
