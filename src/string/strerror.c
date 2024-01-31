#include <errno.h>
#include <stdio.h>
#include <string.h>
#include "_safety.h"

# define __LONGEST_STRERR 64	/* FIXME */

/** convert error number to string **/

char * strerror(int errnum)
{
	static char errstr[__LONGEST_STRERR+1];

	SIGNAL_SAFE(0);

	switch (errnum) {
	#include "_strerror.h"
	default:
		sprintf(errstr, "unknown error [%d]", errnum);
		break;
	}

	/*
	RETURN_ALWAYS(a pointer to the message string);
	*/
	return errstr;
}

CHECK_1(char *, 0, strerror, int)

/***
converts the error number ARGUMENT(errnum) to an error message
string. The string returned should not be modified, and may be overwritten by
subsequent calls.
***/

/*
STDC(1)
*/
