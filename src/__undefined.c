#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include "_safety.h"

#if __STDC_VERSION__ < 199901L
static _Noreturn void _Exit(int);
#include "stdlib/_Exit.c"
#endif

_Noreturn void __undefined(const char *fmt, ...)
{
	va_list ap;
	va_start(ap, fmt);
	fprintf(stderr, "Undefined Behavior: ");
	vfprintf(stderr, fmt, ap);
	if (__checked_call.file) {
		fprintf(stderr, " (source: %s:%ju", __checked_call.file, __checked_call.line);
		if (__checked_call.func) {
			fprintf(stderr, ":%s()", __checked_call.func);
		}
		fprintf(stderr, ")");
	}
	fprintf(stderr, "\n");
	va_end(ap);
	_Exit(-1);
}

/*
STDC(0)
*/
