#include "sys/types.h"
#include <signal.h>

int sigaction(int sig, const struct sigaction * restrict act, struct sigaction * restrict oact)
{
	(void)sig; (void)act; (void)oact;
	return 0;
}

/*
POSIX(1)
*/
