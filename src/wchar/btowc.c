#include <wchar.h>
#include "locale.h"
#include "string.h"

wint_t btowc(int c)
{
	char *l = setlocale(LC_CTYPE, NULL);

	if (!strcmp(l, "C") || !strcmp(l, "POSIX")) {
		if (c <= 127) {
			return (unsigned char)c;
		}
	}

	/* conversion */
	return WEOF;
}

/*
STDC(199409)
*/
