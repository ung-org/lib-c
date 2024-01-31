#include <string.h>
#include "_safety.h"

char * strtok_s(char * restrict s1, rsize_t * restrict s1max, const char * restrict s2, char **restrict ptr)
{
	SIGNAL_SAFE(0);
	/* TODO: check for overlap */
	/* what is the limit a pointer? */
	(void)s1; (void)s1max; (void)s2; (void)ptr;
	return NULL;
}

CHECK_4(char *, 0, strtok_s, char * restrict, rsize_t * restrict, const char * restrict, char ** restrict)

/*
CEXT1(201112)
*/
