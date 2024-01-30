#include <time.h>
#include "_safety.h"

struct tm *getdate(const char *string)
{
	SIGNAL_SAFE(0);
	return NULL;
}

/*
XOPEN(400)
*/
