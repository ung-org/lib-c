#include <stdlib.h>
#include <limits.h>
#include "_stdlib.h"

/** absolute value **/

long long int llabs(long long int j)
{
	SIGNAL_SAFE(0);

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
