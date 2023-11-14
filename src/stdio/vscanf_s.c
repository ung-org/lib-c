#if 0

#include <stdio.h>

int vscanf_s(const char * restrict format, va_list arg)
{
	__C_EXT(1, 201112L);
	return vfscanf(stdin, format, arg);
}

/*
CEXT1(201112)
*/


#endif
