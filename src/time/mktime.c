#include <time.h>

/** convert time structure to arithmetic type **/

time_t mktime(struct tm * timeptr)
{
	(void)timeptr;
	return (time_t)-1;
}

/***
converts the local time pointed to by ARGUMENT(timeptr) to
an arithmetic value of type TYPEDEF(time_t). It also normalizes the values in
the STRUCTDEF(tm) at ARGUMENT(timeptr) to fit the defined limits, as well as
correcting the members MEMBER(tm_wday) and MEMBER(tm_yday) if they were
previously incorrect.
***/

/*
RETURN_FAILURE(CAST(TYPEDEF(time_t), -1))
RETURN_SUCCESS(the converted time)
STDC(1)
*/
