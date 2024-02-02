#include <stdlib.h>
#include <limits.h>
#include "_stdlib.h"

/** absolute value **/

int abs(int j)
{
	SIGNAL_SAFE(0);

	if (j == INT_MIN) {
		UNDEFINED("In call to abs(): The absolute value of INT_MIN is not representable as an int");
		return INT_MIN;
	}

	return j < 0 ? -j : j;
}

CHECK_1(int, 0, abs, int)

/***
computes the absolute value of ARGUMENT(j).
***/

/*
UNDEFINED(ABS(ARGUMENT(j)) cannot be represented)
RETURN_SUCCESS(ABS(j));
STDC(1)
*/
