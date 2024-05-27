#include <stdio.h>
#include "_stdio.h"

/** set the file position indicator **/

int fseek(FILE *stream, long int offset, int whence)
{
	SIGNAL_SAFE(0);
	ASSERT_STREAM(stream, 0, 0);

	if (stream->text && offset != 0) {
		if (whence != SEEK_SET) {
			UNDEFINED("In call to fseek(): Only SEEK_SET is supported for text files");
		}
		ASSERT_PREV(offset, stream->valid_ftell, stream->nvalid_ftell, "ftell");
	}

	if (whence == SEEK_CUR) {
	} else if (whence == SEEK_END) {
	} else if (whence == SEEK_SET) {
	}

	stream->operation = OP_NONE;

	return 1;
}

/***
sets the file position indicator for ARGUMENT(stream).

How the indicator is set is determined by ARGUMENT(whence):

FLAG(CONSTANT(SEEK_SET), The indicator is set to the beginning of the file plus ARGUMENT(offset))
FLAG(CONSTANT(SEEK_CUR), The indicator is advanced from its current position by ARGUMENT(offset), which may be negative)
FLAG(CONSTANT(SEEK_END), The indicator is set to the end of the file minus ARGUMENT(offset))

A successful call to fn(fseek) clears the end-of-file indicator and discards
any characters pushed with fn(ungetc).
***/

/*
UNDEFINED(Specifying CONSTANT(SEEK_END) for ARGUMENT(whence) on a binary file)
UNDEFINED(Specifying a value for ARGUMENT(offset) other than 0 or a previous return value of FUNCTION(ftell) on a text file)
STDC(1)
*/
