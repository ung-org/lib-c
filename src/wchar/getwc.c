#if 0

#include <wchar.h>
#include <stdio.h>

wint_t getwc(FILE * stream)
{
	SIGNAL_SAFE(0);

	return fgetwc(stream);
}

/*
STDC(199409)
*/


#endif
