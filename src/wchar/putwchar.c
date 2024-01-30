#if 0

#include <wchar.h>
#include <stdio.h>

wint_t putwchar(wchar_t c)
{
	SIGNAL_SAFE(0);

	return putwc(c, stdout);
}

/*
STDC(199409)
*/


#endif
