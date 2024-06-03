#include <string.h>
#include <stdlib.h>
#include "_safety.h"

char *strdup(const char *s)
{
	ASSERT_NONNULL(s);
	size_t len = strlen(s) + 1;
	char *dup = malloc(len);
	memcpy(dup, s, len);
	return dup;
}
