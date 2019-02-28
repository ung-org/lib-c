#include <stdlib.h>
#include "limits.h"

/** absolute value **/

long long int llabs(long long int j)
{
	if (j == LLONG_MIN) {
		/* undefined */
		return LLONG_MIN;
	}

	return j < 0 ? -j : j;
}

/***
computes the absolute value of ARGUMENT(j).
***/

/*
UNDEFINED(ABS(ARGUMENT(j)) cannot be represented
RETURN_SUCCESS(ABS(ARGUMENT(j))
STDC(199901)
*/
