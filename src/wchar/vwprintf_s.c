#include "wchar.h"
#include <stdarg.h>

int vwprintf_s(const wchar_t * restrict format, va_list arg)
{
	__C_EXT(1, 201112L);
	return vfwprintf_s(stdout, format, arg);
}

/*
CEXT1(201112)
*/
