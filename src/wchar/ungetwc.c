#if 0

#include <wchar.h>
#include <stdio.h>

wint_t ungetwc(wint_t c, FILE * stream)
{
	SIGNAL_SAFE(0);

	(void)c; (void)stream;
	return -1;
}

/*
STDC(199409)
*/


#endif
