#include <string.h>
#include <stdlib.h>
#include "_safety.h"

char *strdup(const char *s)
{
	ASSERT_NONNULL(s);
	DANGEROUS_READ(s, -1);
	size_t len = strlen(s) + 1;
	DANGER_OVER();

	char *dup = malloc(len);
	memcpy(dup, s, len);
	return dup;
}
