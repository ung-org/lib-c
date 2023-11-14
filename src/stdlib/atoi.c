#if 0

#include <stdlib.h>

/** convert string to integer **/

int atoi(const char * nptr)
{
	return (int)strtol(nptr, (char**)NULL, 10);
}

/***
converts the string at ARGUMENT(nptr) to an TYPE(int) value,
using base 10. The conversion goes until the first non-digit character.
***/

/*
LC_CTYPE
RETURN_SUCCESS(the converted value)
STDC(1)
*/


#endif
