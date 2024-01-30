#include <stdlib.h>
#include "_stdlib.h"

char * setstate(char * state)
{
	SIGNAL_SAFE(0);
	return state;
}

/*
XOPEN(400)
*/
