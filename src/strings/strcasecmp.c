#if 0

#include <strings.h>
#include <ctype.h>

int strcasecmp(const char *s1, const char *s2)
{
	while (*s1 && *s2) {
		char c1 = tolower(*s1);
		char c2 = tolower(*s2);
		if (c1 != c2) {
			return c1 - c2;
		}
	}

	if (*s1) {
		return -1;
	} else if (*s2) {
		return 1;
	}

	return 0;
}

/*
XOPEN(400)
POSIX(200809)
*/


#endif
