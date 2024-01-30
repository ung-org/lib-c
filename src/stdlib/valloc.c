#include <stdlib.h>
#include "_stdlib.h"

void *valloc(size_t size)
{
	SIGNAL_SAFE(0);
}

/*
XOPEN(400,600)
*/
