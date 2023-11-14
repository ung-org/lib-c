#if 0

#include <time.h>

/** get processor time **/

clock_t clock(void)
{
	return (clock_t)-1;
}

/***
returns the amount of processor time used by the current
program. To convert this time to seconds, divide it by CONSTANT(CLOCKS_PER_SEC).
***/

/*
IMPLEMENTATION(What constitutes CAST(TYPEDEF(clock_t), 0))
RETURN_FAILURE(CAST(TYPEDEF(clock_t), -1))
RETURN_SUCCESS(the processor time of the current program)
STDC(1)
*/


#endif
