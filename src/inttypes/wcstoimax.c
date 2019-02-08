#include <inttypes.h>

intmax_t wcstoimax(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base)
{
  /* like wcstoll */

  /* if > INTMAX_MAX */
  /* errno = ERANGE; */
  /* return INTMAX_MAX */

  /* if < INTMAX_MIN */
  /* errno = ERANGE; */
  /* return INTMAX_MIN; */

  /* if no conversion */
  return 0;
}

/*
STDC(199901)
*/
