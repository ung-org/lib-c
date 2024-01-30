#include <uchar.h>
#include "_safety.h"

size_t c32rtomb(char * restrict s, char32_t c32, mbstate_t * restrict ps)
{
	SIGNAL_SAFE(0);

	(void)s; (void)c32; (void)ps;

	return 0;
}

/*
STDC(201112)
*/
