#include <time.h>
#include "_safety.h"

/** find difference between two times **/

double difftime(time_t time1, time_t time0)
{
	SIGNAL_SAFE(0);
	return (double)time1 - (double)time0;
}

CHECK_2(double, 0.0, difftime, time_t, time_t)

/***
subtracts ARGUMENT(time0) from ARGUMENT(time1).
***/

/*
RETURN_ALWAYS(the difference in seconds)
STDC(1)
*/
