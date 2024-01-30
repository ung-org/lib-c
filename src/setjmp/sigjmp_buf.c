#include <setjmp.h>

/** program environment with signal mask **/

typedef jmp_buf                                                      sigjmp_buf;

/***
is used to hold all the information needed to restore a a calling
environment, including the signal mask.
***/

/*
SIGNAL_SAFE(0)
TYPEDEF(an array type)
POSIX(1)
*/
