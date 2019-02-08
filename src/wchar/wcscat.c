#include <wchar.h>

wchar_t * wcscat(wchar_t * restrict s1, const wchar_t * restrict s2)
{
	wcscpy(s1 + wcslen(s1), s2);
	return s1;
}

/*
STDC(199409)
*/
