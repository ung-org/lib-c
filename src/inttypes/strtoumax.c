#include <inttypes.h>

uintmax_t strtoumax(const char *restrict nptr, char ** restrict endptr, int base)
{
  /* like strotull */

  /* if > UINTMAX_MAX */
  /* errno = ERANGE; */
  /* return UINTMAX_MAX */

  /* if no conversion */
  return 0;
}

/*
STDC(199901)
*/
