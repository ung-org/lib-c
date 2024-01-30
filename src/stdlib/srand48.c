#include <stdlib.h>
#include "_stdlib.h"

void srand48(long seedval)
{
	SIGNAL_SAFE(0);
}

/*
XOPEN(4)
*/
