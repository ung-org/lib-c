#include "sys/types.h"
#include <wordexp.h>
#include "stdlib.h"

void wordfree(wordexp_t *pwordexp)
{
	free(pwordexp);
}

/*
POSIX(2)
*/

