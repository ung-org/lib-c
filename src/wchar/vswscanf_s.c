#if 0

#include <wchar.h>
#include <stdarg.h>

int vswscanf_s(const wchar_t * restrict s, const wchar_t * restrict format, va_list arg)
{
	SIGNAL_SAFE(0);

        // fmemopen(a stream)
        // vfwscanf_s(that stream)
        // wcscpy(the results)
        // return length
}

/*
CEXT1(201112)
*/


#endif
