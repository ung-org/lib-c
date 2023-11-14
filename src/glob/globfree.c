#if 0

#include <sys/types.h>
#include <glob.h>
#include <stdlib.h>

void globfree(glob_t * pglob)
{
	size_t i;

	if (pglob == NULL) {
		return;
	}

	for (i = 0; i < pglob->gl_pathc; i++) {
		if (pglob->gl_pathv[i] != NULL) {
			free(pglob->gl_pathv[i]);
		}
	}

	free(pglob);
}

/*
POSIX(2)
*/



#endif
