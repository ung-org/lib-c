#include <stdarg.h>
#include <stdio.h>
#include "_stdio.h"

int __scanf(struct io_options *opt, const char * format, va_list arg)
{
	(void)opt;
	(void)format;
	(void)arg;
	return 0;
}

/*
STDC(0)
SIGNAL_SAFE(0)
*/
