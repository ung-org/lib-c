#include <wchar.h>
#include <stdio.h>
#include "stdio/_stdio.h"
#include "_safety.h"

int fwide(FILE * stream, int mode)
{
	SIGNAL_SAFE(0);

	ASSERT_STREAM(stream, 0, 0);

	if (mode != 0) {
		if (mode < 0) {
			stream->orientation = ORIENT_BYTE;
		} else if (mode > 0) {
			stream->orientation = ORIENT_WIDE;
		}
	}
	return stream->orientation;
}

/*
STDC(199409)
*/
