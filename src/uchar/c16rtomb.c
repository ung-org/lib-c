#include <uchar.h>
#include "_safety.h"

size_t c16rtomb(char * restrict s, char16_t c16, mbstate_t * restrict ps)
{
	SIGNAL_SAFE(0);

	(void)s; (void)c16; (void)ps;
	
	return 0;
}

/*
STDC(201112)
*/
