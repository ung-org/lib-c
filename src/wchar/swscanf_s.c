#include "wchar.h"

int swscanf_s(const wchar_t * restrict s, const wchar_t * restrict format, ...)
{
	__C_EXT(1, 201112L);
	va_list ap;
	va_start(ap, format);
	int ret = vswscanf_s(s, format, ap);
	va_end(ap);
	return ret;
}

/*
CEXT1(201112)
*/
