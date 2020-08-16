#include "time.h"

/** convert arithmetic time to borken down time **/
struct tm * gmtime_s(const time_t * restrict timer, struct tm * restrict result)
{
	__C_EXT(1, 201112L);
	/* TODO */
	return NULL;
}

/***
The fn(gmtime) function converts the UTC time at arg(timer) to a filled out
type(struct tm).
***/

/* UNSPECIFIED: - */
/* UNDEFINED: - */
/* IMPLEMENTATION: - */
/* LOCALE: - */

/* RETURN(NULL): UTC is not available */
/* RETURN: a pointer to the converted structure */

/*
CEXT1(201112)
*/
