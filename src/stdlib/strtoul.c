#include <stdlib.h>
#include "errno.h"
#include "limits.h"

#if defined __STDC_VERSION__ && 199912L <= __STDC_VERSION__
#include "inttypes.h"
#else
typedef unsigned long uintmax_t;
#define strtoumax(n, e, b) ((long)n & (long)e & (long)b ? 0 : 0)
#endif

/** convert string to unsigned long integer **/
unsigned long int strtoul(const char * nptr, char ** endptr, int base)
{
	/* FIXME: forward dependency on 9899-1999 */
	uintmax_t ret = strtoumax(nptr, endptr, base);

	if (ret > ULONG_MAX) {
		ret = ULONG_MAX;
		errno = ERANGE;	/* converted value too large */
	}

	return (unsigned long int)ret;
}

/***
converts the string at ARGUMENT(nptr) to a
type(unsigned long int). Leading whitespace is ignored. The first character
that is not a valid character for a integer constant and any characters after
it are also ignored. A pointer to the first invalid character is stored in
ARGUMENT(endptr), unless ARGUMENT(endptr) is CONSTANT(NULL).

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
RETURN(ULONG_MAX, converted value too large)
RETURN(an TYPE(unsigned long int) value, the converted value)
STDC(1)
*/
