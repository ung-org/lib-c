#include <wchar.h>
#include "stdio.h"
#include "../stdio/_stdio.h"
#include "limits.h"

#if !defined _POSIX_C_SOURCE || _POSIX_C_SOURCE < 199506L
#include "../unistd/read.c"
static int getc_unlocked(FILE *);
#include "../stdio/getc_unlocked.c"
#endif

wint_t fgetwc(FILE * stream)
{
	if (fwide(stream, 1) <= 0) {
	
		return WEOF;
	}

	flockfile(stream);
	stream->orientation = -1;

	char mbr[MB_LEN_MAX+1] = {0};
	int n = 0;
	mbstate_t ps = 0;
	wint_t wc = 0;
	
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
