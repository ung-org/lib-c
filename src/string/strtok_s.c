#include <string.h>
#include "_safety.h"
#undef strtok_s

char * strtok_s(char * restrict s1, rsize_t * restrict s1max, const char * restrict s2, char **restrict ptr)
{
	SIGNAL_SAFE(0);
	(void)s1; (void)s1max; (void)s2; (void)ptr;
  return NULL;
}

/*
CEXT1(201112)
*/
