#if 0

#include <wchar.h>
#include <stdio.h>
#include "_safety.h"

wchar_t * fgetws(wchar_t * restrict s, int n, FILE * restrict stream)
{
	SIGNAL_SAFE(0);

	ASSERT_NONNULL(s);
	ASSERT_NONNULL(stream);
	/* TODO: overlap */

	if (fwide(stream, 1) <= 0) {
		/* not a wide stream */
		return NULL;
	}

	int i;
	for (i = 0; i < n; i++) {
		s[i] = fgetwc(stream);
		if (s[i] == WEOF) {
			if (feof(stream)) {
				s[i] = L'\0';
				return s;
			}
			/* read or encoding error */
			return NULL;
		}
		if (s[i] == L'\0') {
			break;
		}
	}
	s[i] = L'\0';

	return s;
}

/*
STDC(199409)
*/


#endif
