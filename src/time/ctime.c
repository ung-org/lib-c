#include <time.h>

/** convert arithmetic time to string **/

char * ctime(const time_t * timer)
{
	return asctime(localtime(timer));
}

/***
converts the time at ARGUMENT(timer) to a string in the same format as
FUNCTION(asctime).
***/

/*
RETURN_ALWAYS(a pointer to the string)
STDC(1)
*/
