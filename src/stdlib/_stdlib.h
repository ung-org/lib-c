#ifndef ___STDLIB_H__
#define ___STDLIB_H__

#include <stdlib.h>
#include <limits.h>

#define _rand(_n) \
	(((_n) = (_n) * 1103515245 + 12345) ? (_n) / UINT_MAX % RAND_MAX : 0)

struct __stdlib {
	struct atexit {
        	int nfns;
        	void (*fns[32])(void);
        	struct atexit *next;
        	struct atexit *prev;
	} atexit;
	unsigned int rand;
	char **environ;
};

extern struct __stdlib __stdlib;

#endif
