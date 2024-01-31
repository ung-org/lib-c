#include <time.h>
#include "_safety.h"

/** convert arithmetic time to borken down time **/
struct tm * gmtime_s(const time_t * restrict timer, struct tm * restrict result)
{
	/* TODO */
	SIGNAL_SAFE(0);
	(void)timer; (void)result;

	return NULL;
}

CHECK_2(struct tm *, NULL, gmtime_s, const time_t * restrict, struct tm * restrict)

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
