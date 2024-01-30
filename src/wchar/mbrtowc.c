#if 0

#include <wchar.h>

size_t mbrtowc(wchar_t * restrict pwc, const char * restrict s, size_t n, mbstate_t * restrict ps)
{
	SIGNAL_SAFE(0);

	(void)ps; (void)pwc; (void)n;

	if (s == NULL) {
		s = "";
		n = 1;
	}

	/* TODO */

	return 0;
}

/*
STDC(199409)
*/


#endif
