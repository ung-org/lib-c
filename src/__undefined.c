#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include "_safety.h"

#include "_forced/_Exit.h"

_Noreturn void __undefined(const char *fmt, ...)
{
	___signal.current = 0;

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
