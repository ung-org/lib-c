#include <stdarg.h>
#define va_start(ap, parmN)                        __builtin_va_start(ap, parmN)

/** begin processing unnamed arguments **/

/***
prepares unnamed arguments for use. It initializes
ARGUMENT(ap) with the the first argument after the argument named by ARGUMENT(parmN). The
argument named by ARGUMENT(parmN) must be the final named argument to function (i.e.
the argument just prior to LITERAL(`, ...')).
***/

/*
PROTOTYPE(void va_start(va_list ap, VAR(parmN));)

/*
UNDEFINED(ARGUMENT(parmN) is declared TYPE(register))
UNDEFINED(ARGUMENT(parmN) is a function pointer)
UNDEFINED(ARGUMENT(parmN) is an array type)
UNDEFINED(ARGUMENT(parmN) is a type not compatible with default argument promotions)
*/
/*
STDC(1)
*/
