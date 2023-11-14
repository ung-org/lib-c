#if 0

#include <wchar.h>

wchar_t * wcscpy(wchar_t * restrict s1, const wchar_t * restrict s2)
{
	return wcsncpy(s1, s2, wcslen(s2));
}

/*
STDC(199409)
*/


#endif
