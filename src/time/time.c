#include <time.h>
#include <errno.h>
#include "_syscall.h"
#include "_safety.h"

/** get current time **/

time_t time(time_t * timer)
{
	SIGNAL_SAFE(0);

	long int now;
	SYSCALL_NUMBER(sc, time, 0);

	now = __syscall(sc);

	if (timer != NULL && now != -1) {
		*timer = (time_t)now;
	}

	return (time_t)now;
}

__check_1(time_t, 0, time, time_t *)

/***
gets the current time. If ARGUMENT(timer) is not CONSTANT(NULL),
the current time is also stored in the object it points to.
***/

/*
UNSPECIFIED(The encoding of TYPEDEF(time_t))
RETURN_FAILURE(CAST(TYPEDEF(time_t), -1))
RETURN_SUCCESS(the current calndar time)
STDC(1)
*/
