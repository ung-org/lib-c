#include <wchar.h>
#include "stdio.h"

int vwprintf(const wchar_t * restrict format, va_list arg)
{
	return vfwprintf(stdout, format, arg);
}

/*
STDC(199409)
*/
