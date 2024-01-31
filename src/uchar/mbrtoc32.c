#include <uchar.h>
#include "_safety.h"

size_t mbrtoc32(char32_t * restrict pc32, const char * restrict s, size_t n, mbstate_t * restrict ps)
{
	SIGNAL_SAFE(0);
	/* TODO: overlap */

	(void)pc32; (void)s; (void)n; (void)ps;

	return 0;
}

CHECK_4(size_t, 0, mbrtoc32, char32_t * restrict, const char * restrict, size_t, mbstate_t * restrict)

/*
STDC(201112)
*/
