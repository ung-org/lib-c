#include <stdlib.h>
#include "_stdlib.h"

char * realpath(const char * restrict file_name, char * restrict resolved_name)
{
	SIGNAL_SAFE(0);
	return resolved_name;
}

/*
XOPEN(400)
*/
