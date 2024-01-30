#include <stdlib.h>
#include "_stdlib.h"

int putenv(char * string)
{
	SIGNAL_SAFE(0);
	return 0;
}

/*
XOPEN(4)
*/
