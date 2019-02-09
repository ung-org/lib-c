#include <signal.h>

void (*bsd_signal(int sig, void (*func)(int)))(int)
{
	struct sigaction act, oact;
	act.sa_handler = func;
	act.sa_flags = SA_RESTART;

	sigemptyset(&act.sa_mask);
	sigaddset(&act.sa_mask, sig);

	if (sigaction(sig, &act, &oact) == -1) {
		return SIG_ERR;
	}

	return oact.sa_handler;
}

/*
XOPEN(400,700)
*/
