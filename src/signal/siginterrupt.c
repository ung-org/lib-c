#include <sys/types.h>
#include <signal.h>

int siginterrupt(int sig, int flag)
{
	struct sigaction sa = { 0 };
	int ret = -1;

	sigaction(sig, NULL, &sa);
	if (flag) {
		sa.sa_flags &= ~SA_RESTART;
	} else {
		sa.sa_flags |= SA_RESTART;
	}
	return sigaction(sig, &sa, NULL);
}

/*
XOPEN(400)
*/
