#include <errno.h>
#include <stdio.h>
#include <string.h>
#include "_safety.h"
#include "_readonly.h"

/** convert error number to string **/

char * strerror(int errnum)
{
	static char *errstr = NULL;

	SIGNAL_SAFE(0);

	if (errstr == NULL) {
		errstr = __readonly(RO_ALLOC, "strerror");
	}

	__readonly(RO_UNLOCK, errstr);

	switch (errnum) {
	#include "_strerror.h"
	default:
		sprintf(errstr, "unknown error [%d]", errnum);
		break;
	}

	__readonly(RO_LOCK, errstr);

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
