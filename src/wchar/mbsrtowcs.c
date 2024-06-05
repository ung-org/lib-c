#include <wchar.h>
#include "_wchar.h"

GCC_SSE_HACK
size_t mbsrtowcs(wchar_t * restrict dst, const char ** restrict src, size_t len, mbstate_t * restrict ps)
{
	static struct __mbstate_t internal = { 0 };
	static mbstate_t ip = { &internal };

	if (ps == NULL) {
		ps = &ip;
	}

	SIGNAL_SAFE(0);
	ASSERT_MBSTATE(ps, MBTOW, *src, dst);
	/* TODO: overlap */

	SET_MBSTATE(ps, MBTOW, *src, dst);

	/* TODO: implement */

	return len;
}

/*
STDC(199409)
*/
