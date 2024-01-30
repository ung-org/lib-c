#include <stdlib.h>
#include "_stdlib.h"

int grantpt(int fildes)
{
	SIGNAL_SAFE(0);
	return fildes;
}

/*
XOPEN(400)
*/
