#include <string.h>
#include <stdlib.h>
#include <string.h>
#include "_stdlib.h"

/** get an environment variable **/
errno_t getenv_s(size_t * restrict len, char * restrict value, rsize_t maxsize, const char * restrict name)
{
	SIGNAL_SAFE(0);
	ASSERT_NOOVERLAP(len, sizeof(*len), value, maxsize);
	ASSERT_NOOVERLAP(len, sizeof(*len), name, strlen(name));
	ASSERT_NOOVERLAP(value, maxsize, name, strlen(name));

	(void)len; (void)value; (void)maxsize; (void)name;
	return 0;
}

/***
The fn(getenv) function read the environment variable arg(name) from the host
environment.
***/

/* UNSPECIFIED: - */
/* UNDEFINED: modifying the returned string */
/* IMPLEMENTATION: the set of environment variable names */
/* IMPLEMENTATION: the method of altering the environment */
/* LOCALE: - */

/* RETURN(NULL): the environment variable could not be found */
/* RETURN: the value of the requested environment variable */

/*
CEXT1(201112)
*/
