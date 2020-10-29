#include <dlfcn.h>
#include "_dlfcn.h"

char *dlerror(void)
{
	extern char *__dlerror;
	return __dlerror;
}

/*
XOPEN(500)
*/
