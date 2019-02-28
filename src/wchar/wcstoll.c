#include <wchar.h>
#include "limits.h"
#include "errno.h"

long long int wcstoll(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base)
{
        long long int ret = 0;
        long long int max = LLONG_MAX;
        long long int min = LLONG_MIN;

        #include "../stdlib/_strtoi.h"

        return ret;
}

/*
STDC(199901)
*/
