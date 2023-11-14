#if 0

#include <string.h>
#include <stdlib.h>

/** get an environment variable **/
errno_t getenv_s(size_t * restrict len, char * restrict value, rsize_t maxsize, const char * restrict name)
{
	__C_EXT(1, 201112L);
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


#endif
