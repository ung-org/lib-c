#include <wchar.h>
#include "_wchar.h"

size_t mbrlen(const char * restrict s, size_t n, mbstate_t * restrict ps)
{
	static mbstate_t internal = {0};
	SIGNAL_SAFE(0);
	ASSERT_MBSTATE(ps, MBTOW, NULL, NULL);
	/* TODO: overlap */

	return mbrtowc(NULL, s, n, ps != NULL ? ps : &internal);
}

/*
STDC(199409)
*/
