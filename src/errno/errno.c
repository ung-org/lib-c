#define errno                                                       (*__errno())

/** get system errors **/

/***
is a modifiable lvalue of type TYPE(int) which is used to
indicate errors in standard library functions. It may be a macro or an
identifier with external linkage. It is initialized to 0 at program start,
but no function in the standard library will set it to 0. Library functions
may set it to a non-zero value if its use is not documented in their
description.
***/

/*
UNSPECIFIED(Whether THIS() is declared as a macro or an identifier with external linkage (C89, C95, and C99 only))
UNDEFINED(A macro definition of THIS() is suppressed)
UNDEFINED(A program defines an identifier named THIS())
STDC(1)
*/
