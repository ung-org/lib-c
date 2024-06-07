#include <stdio.h>
#include <string.h>
#include "_format.h"

int vfscanf_s(FILE * restrict stream, const char * restrict format, va_list arg)
{
	SIGNAL_SAFE(0);
	ASSERT_NOOVERLAP(stream, sizeof(*stream), format, strlen(format));

	(void)stream; (void)format; (void)arg;
	return 0;
}

/*
CEXT1(201112)
*/
