#include <stdio.h>
#include "nonstd/io.h"

/** reset file stream error indicator **/
void clearerr(FILE * stream)
{
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
