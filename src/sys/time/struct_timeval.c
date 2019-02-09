#include <sys/time.h>

struct timeval {
	time_t tv_sec;
	suseconds_t tv_usec;
};

/*
XOPEN(400)
*/
