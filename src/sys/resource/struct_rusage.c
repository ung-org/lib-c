#include <sys/resource.h>

struct rusage {
	struct timeval ru_utime;
	struct timeval ru_stime;
};

/*
XOPEN(400)
*/
