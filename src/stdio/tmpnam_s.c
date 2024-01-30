#include <stdio.h>
#include "_stdio.h"

/** generate a temporary file name **/
errno_t tmpnam_s(char *s, rsize_t maxsize)
{
	SIGNAL_SAFE(0);
	(void)maxsize;

	static int ntimescalled = 0;
	static char path[L_tmpnam];

	if (ntimescalled >= TMP_MAX) {
		return 0;
	}
	ntimescalled++;

	if (s == NULL) {
		s = path;
	}

	return 0;
}

/***
The fn(tmpnam) function generates a unique file name that can be used as a
temporary file. A new file name is generated every time the function is called
up to macro(TMP_MAX) times.

If arg(s) is macro(NULL), the temporary name is stored in a static internal
buffer. This buffer may be overwritten by additional calls to fn(tmpnam).

If arg(s) is not macro(NULL), it should point to a type(char) array of at least
macro(L_tmpnam) characters. The temporary name will be copied to this array.
***/

/* UNSPECIFIED: - */
/* UNDEFINED: - */
/* IMPLEMENTATION: behavior if fn(tmpnam) is called more than macro(TMP_MAX) times */
/* LOCALE: - */

/* RETURN: a pointer to the temporary file name */

/*
CEXT1(201112)
*/
