#include <stdlib.h>
#include <limits.h>
#include "_stdlib.h"

/** absolute value **/

int abs(int j)
{
	SIGNAL_SAFE(0);

	if (j == INT_MIN) {
		/* undefined behavior */
	}

	return j < 0 ? -j : j;
}

/***
computes the absolute value of ARGUMENT(j).
***/

/*
UNDEFINED(ABS(ARGUMENT(j)) cannot be represented)
RETURN_SUCCESS(ABS(j));
STDC(1)
*/
