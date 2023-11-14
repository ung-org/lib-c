#if 0

#include <stdlib.h>

/** convert string to long long integer **/

long long int atoll(const char *nptr)
{
	return strtoll(nptr, (char**)NULL, 10);
}

/***
converts the string at ARGUMENT(nptr) to a TYPE(long long int) value,
using base 10. The conversion goes until the first non-digit character.
***/

/*
LC_CTYPE
RETURN_SUCCESS(the converted value)
STDC(199901)
*/


#endif
