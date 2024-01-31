#include <uchar.h>
#include "_safety.h"

size_t mbrtoc16(char16_t * restrict pc16, const char * restrict s, size_t n, mbstate_t * restrict ps)
{
	SIGNAL_SAFE(0);

	(void)pc16; (void)s; (void)n; (void)ps;

	return 0;
}

__check_4(size_t, 0, mbrtoc16, char16_t * restrict, const char * restrict, size_t, mbstate_t * restrict)

/*
STDC(201112)
*/
