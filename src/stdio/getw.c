#include <stdio.h>
#include "_stdio.h"

# define _XOPEN_LEGACY 500

int getw(FILE *stream)
{
	SIGNAL_SAFE(0);
	return 0;
}

/*
XOPEN(4,600)
*/
