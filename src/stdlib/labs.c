#include <stdlib.h>
#include <limits.h>
#include "_stdlib.h"

/** absolute value **/

long int labs(long int j)
{
	SIGNAL_SAFE(0);

	if (j == LONG_MIN) {
		UNDEFINED("In call to labs(): The absolute value of LONG_MIN is not representable as a long int");
		return LONG_MIN;
	}

	return j < 0 ? -j : j;
}

CHECK_1(long int, 0, labs, long int)

/***
computes the absolute value of ARGUMENT(j).
***/

/*
UNDEFINED(ABS(ARGUMENT(j)) cannot be represented)
RETURN_SUCCESS(ABS(ARGUMENT(j)))
STDC(1)
*/
