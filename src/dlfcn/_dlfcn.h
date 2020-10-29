#ifndef ___DLFCN_H__
#define ___DLFCN_H__

#include <stddef.h>

struct dlhandle {
	void *base;
	size_t size;
	int fd;
};

#endif
