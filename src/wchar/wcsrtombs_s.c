#include "wchar.h"

errno_t wcsrtombs_s(size_t * restrict retval,
	char * restrict dst, rsize_t dstmax,
	const wchar_t ** restrict src, rsize_t len,
	mbstate_t * restrict ps)
{
	__C_EXT(1, 201112L);
}

/*
CEXT1(201112)
*/
