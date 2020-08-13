#include <signal.h>

int sigignore(int sig)
{
	if (signal(sig, SIG_IGN) == SIG_ERR) {
		return -1;
	}
	return 0;
}

/*
XOPEN(400)
*/
