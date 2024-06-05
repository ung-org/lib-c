#include <wchar.h>
#include <limits.h>
#include "_wchar.h"

GCC_SSE_HACK
size_t wcrtomb(char * restrict s, wchar_t wc, mbstate_t * restrict ps)
{
	static struct __mbstate_t internal = { 0 };
	static mbstate_t ip = { &internal };

	if (ps == NULL) {
		ps = &ip;
	}

	SIGNAL_SAFE(0);
	ASSERT_MBSTATE(ps, WTOMB, s, &wc);
	/* TODO: overlap */

	if (s == NULL) {
		char buf[MB_LEN_MAX+1];
		return wcrtomb(buf, L'\0', ps);
	}

	SET_MBSTATE(ps, WTOMB, s, &wc);

	/* do stuff */
	return 0;
}

/*
STDC(199409)
*/
