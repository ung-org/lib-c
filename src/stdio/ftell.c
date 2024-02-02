#include <stdio.h>
#include "_stdio.h"

/** get the file position indicator **/

long int ftell(FILE *stream)
{
	long int ret = -1L;

	SIGNAL_SAFE(0);
	ASSERT_STREAM(stream, 0, 0);

	/*
	RETURN_SUCCESS(the current file position);
	RETURN_FAILURE(LITERAL(-1L));
	*/
	
	if (stream->text) {
		ADD_PREV(ret, stream->valid_ftell, stream->nvalid_ftell);
	}

	return ret;
}

/***
obtains the current value of the file position indicitor of ARGUMENT(stream).

For binary streams, the indicator is the current byte position.
***/

/*
UNSPECIFIED(The meaning of the file position indicator for text streams)
STDC(1)
*/
