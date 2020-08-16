#include "wchar.h"

errno_t wcrtomb_s(size_t * restrict retval, char * restrict s, rsize_t smax,
	wchar_t wc, mbstate_t * restrict ps)
{
	__C_EXT(1, 201112L);
}

/*
CEXT1(201112)
*/
