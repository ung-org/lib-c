#include <uchar.h>
#include "_safety.h"

size_t mbrtoc32(char32_t * restrict pc32, const char * restrict s, size_t n, mbstate_t * restrict ps)
{
	SIGNAL_SAFE(0);

	(void)pc32; (void)s; (void)n; (void)ps;

	return 0;
}

/*
STDC(201112)
*/
