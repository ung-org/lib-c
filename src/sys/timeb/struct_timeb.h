#include <sys/timeb.h>

struct timeb {
	time_t time;
	unsigned short millitm;
	short timezone;
	short dstflag;
};

/*
XOPEN(400,700)
*/
