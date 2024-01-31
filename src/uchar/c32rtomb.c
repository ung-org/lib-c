#include <uchar.h>
#include "_safety.h"

size_t c32rtomb(char * restrict s, char32_t c32, mbstate_t * restrict ps)
{
	SIGNAL_SAFE(0);
	/* TODO: overlap */

	(void)s; (void)c32; (void)ps;

	return 0;
}

__check_3(size_t, 0, c32rtomb, char * restrict, char32_t, mbstate_t * restrict)

/*
STDC(201112)
*/
