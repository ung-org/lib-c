#include <stdlib.h>
#include "errno.h"

/** convert string to floating-point **/

double strtod(const char * restrict nptr, char ** restrict endptr)
{
	(void)nptr; (void)endptr;
	/* TODO */

	if (0) {
		errno = ERANGE;	/* converted value out of range */
	}
	
	return 0.0;
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
