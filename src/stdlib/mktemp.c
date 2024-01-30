#include <stdlib.h>
#include "_stdlib.h"

char *mktemp(char *template)
{
	SIGNAL_SAFE(0);
	return template;
}

/*
XOPEN(400,700)
*/
