#if 0

#include <sys/types.h>
#include <signal.h>
#include <limits.h>

int sigdelset(sigset_t * set, int signo)
{
	/* TODO: fail with EINVAL if signo is not a valid signal number */
	size_t byte = signo % CHAR_BIT;
	int bit = signo / CHAR_BIT;

	set->__bits[byte] ^= (1 << bit);
	return 0;
}
/*
POSIX(1)
*/


#endif
