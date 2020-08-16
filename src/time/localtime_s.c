#include "time.h"

/** convert arithmetic time to broken down time **/
struct tm * localtime_s(const time_t * restrict timer, struct tm * restrict result)
{
	__C_EXT(1, 201112L);
	/* TODO */
	return NULL;
}

/***
The fn(localtime) function converts the locale time at arg(timer) to a filled
out type(struct tm).
***/

/* UNSPECIFIED: - */
/* UNDEFINED: - */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/* RETURN: a pointer to the converted object */

/*
CEXT1(201112)
*/
