#include <stdio.h>
#include "_stdio.h"

/** reset file position indicator **/

void rewind(FILE *stream)
{
	SIGNAL_SAFE(0);
	fseek(stream, 0L, SEEK_SET);
	clearerr(stream);
}

/***
sets the file position indicator of ARGUMENT(stream) to the
beginning of the file. The error indicator will be cleared.
***/

/*
STDC(1)
*/
