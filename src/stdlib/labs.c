#if 0

#include <stdlib.h>
#include <limits.h>

/** absolute value **/

long int labs(long int j)
{
	if (j == LONG_MIN) {
		/* undefined */
		return LONG_MIN;
	}

	return j < 0 ? -j : j;
}

/***
computes the absolute value of ARGUMENT(j).
***/

/*
UNDEFINED(ABS(ARGUMENT(j)) cannot be represented)
RETURN_SUCCESS(ABS(ARGUMENT(j)))
STDC(1)
*/


#endif
