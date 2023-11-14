#if 0

#include <stdio.h>
#include "_stdio.h"

/** get the file stream position indicator **/

int fgetpos(FILE * restrict stream, fpos_t * restrict pos)
{
	flockfile(stream);
	*pos = stream->pos;
	funlockfile(stream);
	return 0;
}

/***
stores the current value of the file position indicator
for ARGUMENT(stream) into the TYPEDEF(fpos_t) at ARGUMENT(pos).
***/

/*
UNSPECIFIED(The information stored in TYPEDEF(fpos_t))
STDC(1)
*/


#endif
