#if 0

#include <wchar.h>
#include <locale.h>
#include <string.h>
#include <stdio.h>

int wctob(wint_t c)
{
	SIGNAL_SAFE(0);

	char *l = setlocale(LC_CTYPE, NULL);

	if (!strcmp(l, "C") || !strcmp(l, "POSIX")) {
		if (c <= 127) {
			return c;
		}
	}

	/* conversion */
	return EOF;
}

/*
STDC(199409)
*/


#endif
