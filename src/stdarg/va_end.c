#define va_end(__ap)                                      __builtin_va_end(__ap)

/** end processing unnamed arguments **/

/***
stops processing unnamed arguments that were previously begun with a call to
FUNCTION(va_start) so that the enclosing function may return normally.
***/

/*
PROTOTYPE(void va_end(va_list ap);)
UNDEFINED(ARGUMENT(ap) was not initialized by FUNCTION(va_start))
UNDEFINED(THIS() is not called in the same function as FUNCTION(va_start))

STDC(1)
*/
