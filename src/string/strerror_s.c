#include <string.h>
#include <errno.h>
#include "_safety.h"

/** convert error number to string **/
errno_t strerror_s(char *s, rsize_t maxsize, errno_t errnum)
{
	SIGNAL_SAFE(0);
	(void)s; (void)maxsize; (void)errnum;
	return errnum;
}

CHECK_3(errno_t, 0, strerror_s, char *, rsize_t, errno_t)

/***
The fn(strerror_s) converts the error number arg(errnum) to an error message
string. The string returned should not be modified, and may be overwritten by
subsequent calls.
***/

/* UNSPECIFIED: - */
/* UNDEFINED: - */
/* IMPLEMENTATION: - */
/* LOCALE: LC_MESSAGES */

/* RETURN: a pointer to the error message string */

/*
CEXT1(201112)
*/
