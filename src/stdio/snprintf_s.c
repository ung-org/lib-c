#include <stdio.h>
#include <string.h>
#include "_format.h"

int snprintf_s( char * restrict s, rsize_t n, const char * restrict format, ...)
{
	SIGNAL_SAFE(0);
	ASSERT_NOOVERLAP(s, n, format, strlen(format));
	(void)s; (void)n; (void)format;
	return 0;
}

/*
CEXT1(201112)
*/
