#include <nonstd/internal.h>

struct atexit {
	int nfns;
	void (*fns[32])(void);
	struct atexit *next;
	struct atexit *prev;
};
