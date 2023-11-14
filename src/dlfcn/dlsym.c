#if 0

#include <dlfcn.h>
#include "_dlfcn.h"

void *dlsym(void *restrict handle, const char *restrict name)
{
	struct dlhandle *h = handle;
	(void)name;
	return h;
}

/*
XOPEN(500)
*/


#endif
