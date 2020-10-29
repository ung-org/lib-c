#include <dlfcn.h>
#include "_dlfcn.h"

int dlclose(void *handle)
{
	struct dlhandle *h = handle;
	munmap(h->base, h->size);
	close(h->fd);
}

/*
XOPEN(500)
*/
