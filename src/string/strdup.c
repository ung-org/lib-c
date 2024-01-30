#include <string.h>
#include <stdlib.h>
#include "_safety.h"
#undef strdup

char * strdup(const char *s)
{
	SIGNAL_SAFE(0);

	size_t len = strlen(s);
	char *ret = malloc(len + 1);
	if (ret) {
		strcpy(ret, s);
	}
	return ret;
}

/*
XOPEN(400)
POSIX(200809)
*/
