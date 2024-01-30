#include <stdlib.h>
#include "_stdlib.h"

char * initstate(unsigned seed, char * state, size_t size)
{
	SIGNAL_SAFE(0);
	return state;
}

/*
XOPEN(400)
*/
