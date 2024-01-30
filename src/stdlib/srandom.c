#include <stdlib.h>
#include "_stdlib.h"

void srandom(unsigned seed)
{
	SIGNAL_SAFE(0);
}

/*
XOPEN(400)
*/
