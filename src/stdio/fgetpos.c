#include <stdio.h>
#include "_stdio.h"

/** get the file stream position indicator **/

int fgetpos(FILE * restrict stream, fpos_t * restrict pos)
{
	SIGNAL_SAFE(0);
	ASSERT_STREAM(stream, 0, 0);
	ASSERT_NONNULL(pos);
	ASSERT_NOOVERLAP(stream, sizeof(*stream), pos, sizeof(*pos));

	flockfile(stream);
	if (!(pos->__impl >= stream->fpos && pos->__impl <= stream->fpos + stream->nfpos)) {
		struct __fpos_t *tmp = realloc(stream->fpos, sizeof(*stream->fpos) * (stream->nfpos + 1));
		if (tmp == NULL) {
			abort();
		}
		stream->fpos = tmp;
		pos->__impl = &(stream->fpos[stream->nfpos++]);
	}

	pos->__impl->pos = ftell(stream);
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
