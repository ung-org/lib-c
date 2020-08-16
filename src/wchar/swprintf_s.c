#include "wchar.h"

int swprintf_s(wchar_t * restrict s, rsize_t n, const wchar_t * restrict format,
	...)
{
	__C_EXT(1, 201112L);
	va_list ap;
	va_start(ap, format);
	int ret = vswprintf_s(s, n, format, ap);
	va_end(ap);
	return ret;
}

/*
CEXT1(201112)
*/
