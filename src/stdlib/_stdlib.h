#ifndef ___STDLIB_H__
#define ___STDLIB_H__

#include <stdlib.h>
#include <limits.h>
#include "_safety.h"

#ifdef NEED_COMPAR
#ifdef NDEBUG
#define SAFE_COMPAR(__comp, __p1, __p2, __sz, __fn) __comp(__p1, __p2)
#else
static unsigned __hash(const void *p, size_t size) {
	unsigned int h = 0;
	const unsigned char *s = p;
	for (size_t i = 0; i < size; i++) {
		h <<= CHAR_BIT;
		h |= s[i];
	}
	return h;
}
static int __safe_compar(int (*compar)(const void *, const void *), const void *p1, const void *p2, size_t size, const char *fn) {
	unsigned int h1 = __hash(p1, size);
	unsigned int h2 = __hash(p2, size);
	int ret = compar(p1, p2);
	if (h1 != __hash(p1, size) || h2 != __hash(p2, size)) {
		UNDEFINED("In call to %s(): Comparison function modifies parameters", fn);
	}
	return ret;
}
#define SAFE_COMPAR(__comp, __p1, __p2, __sz, __fn) __safe_compar(__comp, __p1, __p2, __sz, __fn)
#endif
#endif

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
