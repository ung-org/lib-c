#include <sys/time.h>

struct itimerval {
	struct timeval it_interval;
	struct timeval it_value;
};

/*
XOPEN(400)
*/

