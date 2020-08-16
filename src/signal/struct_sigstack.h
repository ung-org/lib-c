#include <signal.h>

struct sigstack {
	int ss_onstack;
	void *ss_sp;
};

/*
XOPEN(400,700)
*/
