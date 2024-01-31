#ifndef ___STDLIB_H__
#define ___STDLIB_H__

#include <stdlib.h>
#include <limits.h>
#include "_safety.h"

#define _rand(_n) \
	(((_n) = (_n) * 1103515245 + 12345) ? (_n) / UINT_MAX % RAND_MAX : 0)

#include "errno/errno_t.h"
#include "constraint_handler_t.h"
#include "__constraint_info.h"
void abort_handler_s(const char * restrict msg, void * restrict ptr, errno_t error);

struct __stdlib {
	struct atexit {
        	int nfns;
        	void (*fns[32])(void);
        	struct atexit *next;
        	struct atexit *prev;
	} atexit, at_quick_exit;
	enum { REGULAR = 1, QUICK } exit_called;
	unsigned int rand;
	char **environ;
	constraint_handler_t constraint_handler;
};

extern struct __stdlib __stdlib;

#ifdef _POSIX_SOURCE
extern char **environ;
#else
#define environ __stdlib.environ
#endif

/*
STDC(-1)
*/

#endif
