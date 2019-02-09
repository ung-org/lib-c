#include <sys/resource.h>

struct rlimit {
	rlim_t rlim_cur;
	rlim_t rlim_max;
};

/*
XOPEN(400)
*/
