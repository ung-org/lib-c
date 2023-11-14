#if 0

#include <wchar.h>
#include <stdarg.h>

int vwscanf_s(const wchar_t * restrict format, va_list arg)
{
	__C_EXT(1, 201112L);
	return vwscanf_s(stdin, format, arg);
}

/*
CEXT1(201112)
*/


#endif
