#include <wchar.h>

wchar_t * wcswcs(const wchar_t * s1, const wchar_t * s2)
{
	return wcsstr(s1, s2);
}

/*
XOPEN(4,700)
*/
