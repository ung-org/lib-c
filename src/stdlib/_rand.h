#include <limits.h>

#define _rand(_n) \
	(((_n) = (_n) * 1103515245 + 12345) ? (_n) / UINT_MAX % RAND_MAX : 0)
