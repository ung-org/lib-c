#include <string.h>
#include <strings.h>

int bcopy(const void *s1, void *s2, size_t n)
{
	memcpy(s1, s2, n);
	return n;
}

/*
XOPEN(400,700)
*/
