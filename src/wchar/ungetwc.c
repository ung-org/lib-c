#include <wchar.h>
#include <stdio.h>

wint_t ungetwc(wint_t c, FILE * stream)
{
	(void)c; (void)stream;
	return -1;
}

/*
STDC(199409)
*/
