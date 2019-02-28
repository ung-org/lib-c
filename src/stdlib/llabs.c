#include <stdlib.h>
#include "limits.h"

long long int llabs(long long int j)
{
	if (j == LLONG_MIN) {
		/* undefined */
	}

	if (j < 0) {
		return -j;
	}

	return j;
}

/*
STDC(199901)
*/
