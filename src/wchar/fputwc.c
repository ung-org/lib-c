#include <wchar.h>
#include "stdio.h"
#include "nonstd/io.h"
#include "limits.h"
#include "errno.h"

wint_t fputwc(wchar_t c, FILE * stream)
{
	size_t i;

	if (fwide(stream, 1) <= 0) {
		/* not a wide stream */
		return WEOF;
	}

	flockfile(stream);
	stream->orientation = -1;

	char mbs[MB_LEN_MAX+1] = {0};
	mbstate_t ps = 0;
	size_t len = wcrtomb(mbs, c, &ps);

	if (len == (size_t)-1) {
		errno = EILSEQ;
		return WEOF;
	}

	/* FIXME: check for errors here */
	for (i = 0; i < len; i++) {
		fputc(mbs[i], stream);
	}

	stream->orientation = 1;
	funlockfile(stream);

	return c;
}

/*
STDC(199409)
*/
