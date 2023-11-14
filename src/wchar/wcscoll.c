#if 0

#include <wchar.h>

int wcscoll(const wchar_t * s1, const wchar_t * s2)
{
	/*
	wchar_t *collated_s1 = s1;
	wchar_t *collated_s2 = s2;
	*/
	/* wcsxfrm */
	return wcscmp(s1, s2);
}

/*
STDC(199409)
*/


#endif
