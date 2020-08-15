#include <wchar.h>
#include <stdio.h>

int fputws(const wchar_t * restrict s, FILE * restrict stream)
{
	const wchar_t *p = s;
	while (*p != L'\0') {
		if (fputwc(*p, stream) == EOF) {
			return EOF;
		}
		p++;
	}
	return 0;
}

/*
STDC(199409)
*/
