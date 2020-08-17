#include <string.h>
#include <errno.h>
#include "__strerror.h"

/** convert error number to string **/
errno_t strerror_s(char *s, rsize_t maxsize, errno_t errnum)
{
	__C_EXT(1, 201112L);
	if (errnum > __nstrerror || __strerror[errnum] == NULL) {
		if (snprintf(s, maxsize, "Uknown error [%d]", errnum) < maxsize) {
			return 0;
		}
		return 1;
	}

	strncpy(s, __strerror[errnum], maxsize);
	return errnum;
}

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
