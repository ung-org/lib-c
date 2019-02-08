#include <wchar.h>
#include "stdio.h"
#include "stdarg.h"
#include "stdlib.h"

int vfwprintf(FILE * restrict stream, const wchar_t * restrict format, va_list arg)
{
	/*
	va_list ap;
	va_copy(ap, arg);
	int len = vsnwprintf(NULL, 0, format, arg);
	wchar_t *buf = malloc((len + 1) * sizeof(wchar_t));
	len = vsnwprintf(buf, len, format, ap);
	va_end(ap);
	len = (int)fwrite(buf, sizeof(*buf), len, stream);
	free(buf);
	return len;
	*/
	(void)stream; (void)format; (void)arg;
	return 0;
}

/*
STDC(199409)
*/
