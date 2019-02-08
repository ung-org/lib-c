#include <inttypes.h>

intmax_t imaxabs(intmax_t j)
{
  /* returns the absolute value of j */
  /* if imaxabs(j) can't be representeted (i.e. imaxabs(INTMAX_MIN), behavior is undefined */
/*
  if (j == INTMAX_MIN) {
    __ungol_libc_undefined("Cannot represent absolute value of %" PRIxMAX "\n", j);
  }
*/
	if (j == INTMAX_MIN) {
		/* undefined behavior */
		return INTMAX_MIN;
	}
	
	if (j < 0) {
		return -j;
	}

	return j;
}


/*
STDC(199901)
*/
