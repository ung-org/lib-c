#if 0

#include <wchar.h>
#include <stdarg.h>

int vwprintf_s(const wchar_t * restrict format, va_list arg)
{
	SIGNAL_SAFE(0);

	return vfwprintf_s(stdout, format, arg);
}

/*
CEXT1(201112)
*/


#endif
