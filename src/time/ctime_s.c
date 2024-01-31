#include <time.h>
#include "_safety.h"

/** convert arithmetic time to string **/
errno_t ctime_s(char *s, rsize_t maxsize, const time_t *timer)
{
	SIGNAL_SAFE(0);
	(void)s; (void)maxsize;
	asctime(localtime(timer));
	return 0;
}

__check_3(errno_t, 0, ctime_s, char *, rsize_t, const time_t *)

/***
The fn(ctime) converts the time at arg(timer) to a string in the same format as
fn(asctime).
***/

/* UNSPECIFIED: - */
/* UNDEFINED: - */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/* RETURN: a pointer to the string */

/*
CEXT1(201112)
*/
