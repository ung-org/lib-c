#if 0

#include <stdlib.h>
#include <float.h>
#include <errno.h>
#include <ctype.h>
#include <math.h>

/** convert string to floating-point **/

float strtof(const char * restrict nptr, char ** restrict endptr)
{
	float ret = 0.0;
	float max = FLT_MAX;
	float min = FLT_MIN;
	float huge = HUGE_VALF;
	float inf = INFINITY;
	float nan = NAN;

	#include "_strtod.h"

	return ret;
}

/***
converts the string at ARGUMENT(nptr) to a TYPE(float).
Leading whitespace is ignored. The first character that is not a valid character
for a floating-point constant and any characters after it are also ignored. A
pointer to the first invalid character is stored in ARGUMENT(endptr), unless
ARGUMENT(endptr) is CONSTANT(NULL).

The converted portion of the string may start with an optional plus or minus
sign, followed by a nonempty series of digits, optionally containing a
decimal-point character. This may optionally be followed by an exponent.
***/

/*
LC_CTYPE
RETURN(ZERO, underflow or no conversion could be performed)
RETURN(CONSTANT(HUGE_VALF), converted value too large)
RETURN(CONSTANT(-HUGE_VALF), converted value too small)
RETURN(VAR(a TYPE(float)), the converted value)
STDC(199901)
*/


#endif
