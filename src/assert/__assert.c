#include <assert.h>
#include "stdio.h"
#include "stdlib.h"

void __assert(const char *expr, const char *file, int line, const char *func)
{
        if (func) {
                fprintf(stderr, "Assertion failed: %s (%s:%d:%s())\n", expr,
                        file, line, func);
        } else {
                fprintf(stderr, "Assertion failed: %s (%s:%d)\n", expr, file,
                        line);
        }
        abort();
}
