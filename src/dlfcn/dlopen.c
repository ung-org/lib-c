#include <dlfcn.h>
#include <fcntl.h>
#include <stdlib.h>
#include "_dlfcn.h"

void *dlopen(const char *file, int mode)
{
	if ((mode & (RTLD_LAZY | RTLD_NOW)) == (RTLD_LAZY | RTLD_NOW)) {
		return NULL;
	}

	if ((mode & (RTLD_GLOBAL | RTLD_LOCAL)) == (RTLD_GLOBAL | RTLD_LOCAL)) {
		return NULL;
	}

	struct dlhandle *h = malloc(sizeof(*h));
	if (h == NULL) {
		return NULL;
	}

	h->fd = open(file, O_RDONLY | O_EXEC);
	if (h->fd == -1) {
		free(h);
		return NULL;
	}

	/* map and verify file header */

	return h;
}

/*
XOPEN(500)
*/
