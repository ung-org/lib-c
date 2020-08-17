#include <stdio.h>
#include <wchar.h>

int fwscanf_s(FILE * restrict stream, const wchar_t * restrict format, ...)
{
	__C_EXT(1, 201112L);
	va_list ap;
	va_start(ap, format);
	int ret = vfwscanf_s(stream, format, ap);
	va_end(ap);
	return ret;
}

/*
CEXT1(201112)
*/
