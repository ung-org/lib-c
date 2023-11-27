#include <stdio.h>
#include <ctype.h>
#include <stdarg.h>
#include "_assert.h"

#define F(fn) (int(*)())(fn)

int __checked_i(const char *file, const char *func, unsigned long long line, int (*fn)(), ...)
{
	va_list ap;
	int ret = -1;

	__checked_call.func = (char*)func;
	__checked_call.file = (char*)file;
	__checked_call.line = line;

	va_start(ap, fn);

	if (fn == F(isalpha)
		|| fn == F(isdigit)
		|| fn == F(isupper)
		|| fn == F(islower)
		|| fn == F(toupper)
		|| fn == F(tolower)
		) {
		int arg = va_arg(ap, int);
		ret = fn(arg);
	}

	va_end(ap);

	__checked_call.func = NULL;
	__checked_call.file = NULL;
	__checked_call.line = 0;

	return ret;
}

/*
STDC(0)
*/
