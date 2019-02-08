#include <string.h>
#include "errno.h"
#include "stdio.h"
# define __LONGEST_STRERR 64	/* FIXME */

/** convert error number to string **/
char * strerror(int errnum)
{
	static char errstr[__LONGEST_STRERR+1];

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

/***
converts the error number ARGUMENT(errnum) to an error message
string. The string returned should not be modified, and may be overwritten by
subsequent calls.
***/
/*
STDC(1)
*/
