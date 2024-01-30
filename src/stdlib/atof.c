#include <stdlib.h>
#include "_stdlib.h"

/** convert string to floating-point **/

double atof(const char * nptr)
{
	SIGNAL_SAFE(0);
	return strtod(nptr, (char**)NULL);
}

/***
converts the string at ARGUMENT(nptr) to a TYPE(double). The
conversion goes until the first inappropriate character.
***/

/*
LC_CTYPE
RETURN_SUCCESS(the converted value)
STDC(1)
*/
