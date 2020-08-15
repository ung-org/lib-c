#include <string.h>
#include <stdlib.h>

char * strdup(const char *s)
{
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
