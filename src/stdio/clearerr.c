#include <stdio.h>
#include "_stdio.h"
#include "_safety.h"

/** reset file stream error indicator **/

void clearerr(FILE * stream)
{
	SIGNAL_SAFE(0);
	flockfile(stream);
	if (stream != NULL) {
		stream->eof = 0;
		stream->err = 0;
	}
	funlockfile(stream);
}

/***
clears the error and end-of-file indicators of ARGUMENT(stream).
***/

/*
STDC(1)
*/
