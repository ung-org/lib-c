#include <time.h>

struct itimerspec {
	struct timespec it_interval;
	struct timespec it_value;
};

/*
POSIX(199309)
*/
