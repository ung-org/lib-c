#include <stdlib.h>
#include "nonstd/lib.h"
#include "_rand.h"

/** get a pseudo-random number **/
int rand(void)
{
	return _rand(*(unsigned*)__libc(RAND));
}

/***
computes a pseudo-random number in the range [0,CONSTANT(RAND_MAX)].
***/

/*
RETURN_SUCCESS(a pseudo-random integer)
STDC(1)
*/
