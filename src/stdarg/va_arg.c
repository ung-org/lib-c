#include <stdarg.h>

/** get an unnamed parameter **/

#define va_arg(__ap, __type)                      __builtin_va_arg(__ap, __type)

/***
retrieves the next unnamed parameter for use. The ARGUMENT(ap) parameter must
be first initialized with a call to FUNCTION(va_start). Each successive call to
FUNCTION(va_arg) evaluates the next argument as an object of type ARGUMENT(type)
and returns that value, modifying ARGUMENT(ap) for use in the next call to
FUNCTION(va_arg).
***/

/*
PROTOTYPE(TYPE(VAR(type)) va_arg(va_list ap, TYPE(VAR(type)));)

UNDEFINED(There is no next argument)
UNDEFINED(The next argument is not compatible with TYPE(ARGUMENT(type)))
RETURN_SUCCESS(an object of TYPE(ARGUMENT(type)) which is the next unnamed function parameter)

STDC(1)
*/
