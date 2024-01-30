#if 0

#include <wchar.h>
#include <stdio.h>

wint_t getwchar(void)
{
	SIGNAL_SAFE(0);

	return getwc(stdin);
}

/*
STDC(199409)
*/


#endif
