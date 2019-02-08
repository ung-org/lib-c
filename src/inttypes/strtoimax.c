#include <inttypes.h>

intmax_t strtoimax(const char * restrict nptr, char ** restrict endptr, int base)
{
  /* like strotoll */

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
