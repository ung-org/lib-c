#include <stdio.h>
#include "_stdio.h"

int vfscanf_s(FILE * restrict stream, const char * restrict format, va_list arg)
{
	SIGNAL_SAFE(0);
	(void)stream; (void)format; (void)arg;
	return 0;
}

/*
CEXT1(201112)
*/
