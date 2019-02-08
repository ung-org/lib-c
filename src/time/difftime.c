#include <time.h>

/** find difference between two times **/

double difftime(time_t time1, time_t time0)
{
	return (double)time1 - (double)time0;
}

/***
subtracts ARGUMENT(time0) from ARGUMENT(time1).
***/

/*
RETURN_ALWAYS(the difference in seconds)
STDC(1)
*/
