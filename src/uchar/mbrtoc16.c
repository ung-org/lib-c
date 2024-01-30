#include <uchar.h>
#include "_safety.h"

size_t mbrtoc16(char16_t * restrict pc16, const char * restrict s, size_t n, mbstate_t * restrict ps)
{
	SIGNAL_SAFE(0);

	(void)pc16; (void)s; (void)n; (void)ps;

	return 0;
}

/*
STDC(201112)
*/
