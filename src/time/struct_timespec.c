#include <time.h>

struct timespec {
	time_t tv_sec;	/* Seconds */
	long tv_nsec;	/* Nanoseonds */
};

/*
POSIX(199309)
*/
