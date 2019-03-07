#include <wchar.h>
#include "wctype.h"
#include "limits.h"
#include "errno.h"

#define isspace iswspace

unsigned long int wcstoul(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base)
{
	unsigned long int ret = 0;
	unsigned long int max = ULONG_MAX;
	unsigned long int min = 0;

	#include "../stdlib/_strtoi.h"

	return ret;
}

/*
STDC(199409)
*/
