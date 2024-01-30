#include <stdio.h>
#include <stdlib.h>
#include "_safety.h"

void __assert(const char *expr, const char *file, int line, const char *func)
{
	SIGNAL_SAFE(0);

        if (func) {
                fprintf(stderr, "Assertion failed: %s (%s:%d:%s())\n", expr,
                        file, line, func);
        } else {
                fprintf(stderr, "Assertion failed: %s (%s:%d)\n", expr, file,
                        line);
        }

        abort();
}

/*
STDC(0)
*/
