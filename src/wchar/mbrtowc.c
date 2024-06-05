#include <wchar.h>
#include "_wchar.h"

GCC_SSE_HACK
size_t mbrtowc(wchar_t * restrict pwc, const char * restrict s, size_t n, mbstate_t * restrict ps)
{
	static struct __mbstate_t internal = { 0 };
	static mbstate_t ip = { &internal };

	if (ps == NULL) {
		ps = &ip;
	}

	SIGNAL_SAFE(0);
	ASSERT_MBSTATE(ps, MBTOW, s, pwc);
	/* TODO: overlap */

	if (s == NULL) {
		return mbrtowc(NULL, "", 1, ps);
	}

	SET_MBSTATE(ps, MBTOW, s, pwc);

	return n;
}

/*
STDC(199409)
*/
