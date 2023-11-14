#if 0

#include <stdlib.h>

/** convert string to floating-point **/

double atof(const char * nptr)
{
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


#endif
