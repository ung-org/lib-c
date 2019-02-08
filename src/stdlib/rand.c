#include <stdlib.h>
#include "nonstd/internal.h"

/** get a pseudo-random number **/
int rand(void)
{
	/* FIXME: forward dependency on POSIX.1c-1995 */
	extern int rand_r(unsigned int*);
	return rand_r(__libc(RAND));
}

/***
computes a pseudo-random number in the range [0,CONSTANT(RAND_MAX)].
***/

/*
RETURN_SUCCESS(a pseudo-random integer)
STDC(1)
*/
