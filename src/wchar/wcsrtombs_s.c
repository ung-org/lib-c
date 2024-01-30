#if 0

#include <wchar.h>

errno_t wcsrtombs_s(size_t * restrict retval,
	char * restrict dst, rsize_t dstmax,
	const wchar_t ** restrict src, rsize_t len,
	mbstate_t * restrict ps)
{
	SIGNAL_SAFE(0);

}

/*
CEXT1(201112)
*/


#endif
