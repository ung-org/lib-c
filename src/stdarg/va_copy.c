#include <stdarg.h>
#define va_copy(dest, src)                          __builtin_va_copy(dest, src)

/*
STDC(199901)
*/
