#include "_stdlib.h"

/** get a pseudo-random number **/
int rand(void)
{
	SIGNAL_SAFE(0);

	return (int)_rand(__stdlib.rand);
}

/***
computes a pseudo-random number in the range [0,CONSTANT(RAND_MAX)].
***/

/*
RETURN_SUCCESS(a pseudo-random integer)
STDC(1)
*/
