#include <sys/sem.h>

struct __sem_anonymous {
	unsigned short semval;
	pid_t sempid;
	unsigned short semncnt;
	unsigned short semzcnt;
};

/*
XOPEN(4)
*/
