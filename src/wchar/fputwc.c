#include <wchar.h>
#include <stdio.h>
#include <limits.h>
#include <errno.h>
#include "stdio/_stdio.h"

wint_t fputwc(wchar_t c, FILE * stream)
{
	SIGNAL_SAFE(0);

	char mbs[MB_LEN_MAX+1] = {0};
	mbstate_t ps = { 0 };
	size_t len = wcrtomb(mbs, c, &ps);
	size_t i;

	if (fwide(stream, 1) <= 0) {
		return WEOF;
	}

	flockfile(stream);
	stream->orientation = -1;

	if (len == (size_t)-1) {
		errno = EILSEQ;
		return WEOF;
	}

	/* FIXME: check for errors here */
	for (i = 0; i < len; i++) {
		putc_unlocked(mbs[i], stream);
	}

	stream->orientation = 1;
	funlockfile(stream);

	return c;
}

/*
STDC(199409)
*/
