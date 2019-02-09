#include <glob.h>
#include "stdlib.h"

void globfree(glob_t * pglob)
{
	if (pglob == NULL) {
		return;
	}

	for (size_t i = 0; i < pglob->gl_pathc; i++) {
		if (pglob->gl_pathv[i] != NULL) {
			free(pglob->gl_pathv[i]);
		}
	}

	free(pglob);
}

/*
POSIX(2)
*/

