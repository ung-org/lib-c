#include <wchar.h>
#include "_safety.h"

size_t wcslen(const wchar_t * s)
{
	SIGNAL_SAFE(0);

	size_t l = 0;
	while (s[l] != L'\0') {
		l++;
	}
	return l;
}

/*
STDC(199409)
*/
