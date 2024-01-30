#if 0

#include <wchar.h>
#include <stdio.h>

int vwprintf(const wchar_t * restrict format, va_list arg)
{
	SIGNAL_SAFE(0);

	return vfwprintf(stdout, format, arg);
}

/*
STDC(199409)
*/


#endif
