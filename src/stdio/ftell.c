#include <stdio.h>
#include "_stdio.h"

/** get the file position indicator **/

long int ftell(FILE *stream)
{
	SIGNAL_SAFE(0);

	(void)stream;
	/* TODO */
	/*
	RETURN_SUCCESS(the current file position);
	RETURN_FAILURE(LITERAL(-1L));
	*/
	return -1L;
}

/***
obtains the current value of the file position indicitor of ARGUMENT(stream).

For binary streams, the indicator is the current byte position.
***/

/*
UNSPECIFIED(The meaning of the file position indicator for text streams)
STDC(1)
*/
