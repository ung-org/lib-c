#include "stdio.h"
#include "wchar.h"

int vfwprintf_s(FILE * restrict stream, const wchar_t * restrict format, va_list arg)
{
	__C_EXT(1, 201112L);
	va_list ap;
	va_copy(ap, arg);
	int len = vsnwprintf(NULL, 0, format, arg);
	wchar_t *buf = malloc((len + 1) * sizeof(wchar_t));
	len = vsnprintf(buf, len, format, ap);
	va_end(ap);
	//len = (int)fwrite(buf, sizeof(*buf), len, stream);
	free(buf);
	return len;
}

/*
CEXT1(201112)
*/
