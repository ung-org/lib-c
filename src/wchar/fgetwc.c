#include <wchar.h>
#include <stdio.h>
#include <limits.h>
#include "stdio/_stdio.h"

wint_t fgetwc(FILE * stream)
{
	char mbr[MB_LEN_MAX+1] = {0};
	mbstate_t ps = 0;
	wint_t wc = 0;
	int n = 0;
	
	if (fwide(stream, 1) <= 0) {
		return WEOF;
	}

	flockfile(stream);
	stream->orientation = -1;

	/* FIXME: check for (size_t)-2 and (size_t)-1 from mbrtowc */
	do {
		mbr[n++] = getc_unlocked(stream);
		ps = 0;
	} while (mbrtowc(&wc, mbr, n, &ps) != 0);

	stream->orientation = 1;
	funlockfile(stream);

	return wc;
}

/*
STDC(199409)
*/
