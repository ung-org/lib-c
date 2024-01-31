#include <uchar.h>
#include "_safety.h"

size_t c16rtomb(char * restrict s, char16_t c16, mbstate_t * restrict ps)
{
	SIGNAL_SAFE(0);

	(void)s; (void)c16; (void)ps;
	
	return 0;
}

__check_3(size_t, 0, c16rtomb, char * restrict, char16_t, mbstate_t * restrict)

/*
STDC(201112)
*/
