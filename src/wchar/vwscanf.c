#include <wchar.h>
#include "stdarg.h"
#include "stdio.h"

int vwscanf(const wchar_t * restrict format, va_list arg)
{
	return vfwscanf(stdin, format, arg);
}

/*
STDC(199901)
*/
