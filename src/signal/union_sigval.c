#include <signal.h>

union sigval {
	int sival_int;
	void *sival_ptr;
};

/*
POSIX(199309)
*/
