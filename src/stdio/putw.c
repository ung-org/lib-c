#include <stdio.h>
#include "_stdio.h"

# define _XOPEN_LEGACY 500

int putw(int w, FILE *stream)
{
	SIGNAL_SAFE(0);
	(void)w; (void)stream;
}

/*
XOPEN(4,600)
*/
