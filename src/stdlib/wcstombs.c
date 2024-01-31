#include <stdlib.h>
#include <wchar.h>
#include "_stdlib.h"

/** convert wide character string to multibyte string **/

size_t wcstombs(char * restrict s, const wchar_t * restrict pwcs, size_t n)
{
	SIGNAL_SAFE(0);
	ASSERT_NOOVERLAP(s, n, pwcs, wcslen(pwcs));

	(void)s; (void)pwcs; (void)n;
	/* TODO */
	return 0;
}

/***
converts the wide character string ARGUMENT(pwcs) to a multibyte string, which
is stored at ARGUMENT(s), beginning in the initial shift state. No more than
ARGUMENT(n) bytes are written to ARGUMENT(s). Conversion stops after reaching
a null wide character, which is converted and stored.
***/

/*
UNDEFINED(The memory regions of ARGUMENT(s) and ARGUMENT(pwcs) overlap)
LC_CTYPE
RETURN_FAILURE(-1)
RETURN_SUCCESS(the number of bytes modified, not counting any terminating null)
STDC(1)
*/
