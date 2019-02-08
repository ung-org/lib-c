#include <stdlib.h>

/** long quotient and remainder **/

typedef struct {
	long int quot;
	long int rem;
} ldiv_t;

/***
is the type returned by FUNCTION(ldiv) to hold both the quotient and remainder
of an integer division.
***/

/*
STDC(1)
*/
