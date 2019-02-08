#include <inttypes.h>

uintmax_t wcstoumax(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base)
{
  /* like wcstoll */

  /* if > UINTMAX_MAX */
  /* errno = ERANGE; */
  /* return UINTMAX_MAX */

  /* if no conversion */
  return 0;
}

/*
STDC(199901)
*/
