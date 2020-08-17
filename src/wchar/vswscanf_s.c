#include <wchar.h>
#include <stdarg.h>

int vswscanf_s(const wchar_t * restrict s, const wchar_t * restrict format, va_list arg)
{
	__C_EXT(1, 201112L);
        // fmemopen(a stream)
        // vfwscanf_s(that stream)
        // wcscpy(the results)
        // return length
}

/*
CEXT1(201112)
*/
