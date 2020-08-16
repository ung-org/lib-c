#include <ctype.h>
#include <errno.h>
#include <float.h>
#include <math.h>
#include <stdlib.h>

#ifndef INFINITY
#include "math/INFINITY.h"
#endif

#ifndef NAN
#include "math/NAN.h"
#endif

/** convert string to floating-point **/

double strtod(const char * restrict nptr, char ** restrict endptr)
{
	double ret = 0.0;
	double max = DBL_MAX;
	double min = DBL_MIN;
	double inf = INFINITY;
	double nan = NAN;
	double huge = HUGE_VAL;

	#include "_strtod.h"
	
	return ret;
}

/***
converts the string at ARGUMENT(nptr) to a TYPE(double).
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
RETURN(CONSTANT(HUGE_VAL), converted value too large)
RETURN(CONSTANT(-HUGE_VAL), converted value too small)
RETURN(VAR(a TYPE(double)), the converted value)
STDC(1)
*/
