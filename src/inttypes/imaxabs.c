#include <inttypes.h>
#include "_safety.h"

/** absolute value **/

intmax_t imaxabs(intmax_t j)
{
	SIGNAL_SAFE(0);

	if (j == INTMAX_MIN) {
		/* undefined behavior */
		return INTMAX_MIN;
	}
	
	return j < 0 ? -j : j;
}

CHECK_1(intmax_t, 0, imaxabs, intmax_t)

/***
computes the absolute value of ARGUMENT(j).
***/

/*
UNDEFINED(ABS(ARGUMENT(j)) cannot be represented
RETURN_SUCCESS(ABS(ARGUMENT(j))
STDC(199901)
*/
