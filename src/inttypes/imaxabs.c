#if 0

#include <stddef.h>
#include <inttypes.h>

/** absolute value **/

intmax_t imaxabs(intmax_t j)
{
	if (j == INTMAX_MIN) {
		/* undefined behavior */
		return INTMAX_MIN;
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


#endif
