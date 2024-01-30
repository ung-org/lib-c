#if 0

#include <wchar.h>
#include <stdio.h>

wint_t putwc(wchar_t c, FILE * stream)
{
	SIGNAL_SAFE(0);

	return fputwc(c, stream);
}

/*
STDC(199409)
*/


#endif
