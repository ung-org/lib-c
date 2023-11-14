#if 0

#include <time.h>

/** convert arithmetic time to string **/
errno_t ctime_s(char *s, rsize_t maxsize, const time_t *timer)
{
	__C_EXT(1, 201112L);
	return asctime(localtime(timer));
}

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


#endif
