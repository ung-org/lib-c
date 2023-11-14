#if 0

#include <ctype.h>
#include <errno.h>
#include <limits.h>
#include <stdlib.h>

/** convert string to long integer **/

long int strtol(const char * restrict nptr, char ** restrict endptr, int base)
{
	long int ret = 0;
	long int max = LONG_MAX;
	long int min = LONG_MIN;

	#include "_strtoi.h"

	return ret;
}

/***
converts the string at ARGUMENT(nptr) to a TYPE(long int).
Leading whitespace is ignored. The first character that is not a valid character
for a integer constant and any characters after it are also ignored. A pointer
to the first invalid character is stored in ARGUMENT(endptr), unless
ARGUMENT(endptr) is CONSTANT(NULL).

The conversion is conducted in the base specified by ARGUMENT(base).
Specifying 0 for ARGUMENT(base) will check the first few characters of
ARGUMENT(nptr) to determine the conversion base. If it begins with LITERAL(0x)
or LITERAL(0X), a base of 16 will be used. Otherwise, if it begins with
CHAR(0), base 8 will be used. If neither of those occur, base 10 will be used.

If ARGUMENT(base) is specified, it must be in the range [2,36]. For bases
larger than 10, the letters CHAR(a) through CHAR(z) and their uppercase
conversions are assigned the values 10 through 35. Base 16 numbers may be
preceded by LITERAL(0x) or LITERAL(0X).

The numeric string consists of an optional leading plus or minus followed by
digits in the appropriate base.
***/

/*
RETURN(ZERO, no conversion could be performed)
RETURN(CONSTANT(LONG_MAX), converted value too large)
RETURN(CONSTANT(LONG_MIN), converted value too small)
RETURN(a TYPE(long int) value, the converted value)
STDC(1)
*/


#endif
