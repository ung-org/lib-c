#include "sys/types.h"
#include <signal.h>
#include "limits.h"

int sigismember(const sigset_t * set, int signo)
{
	/* TODO: fail with EINVAL if signo is not a valid signal number */

	size_t byte = signo % CHAR_BIT;
	int bit = signo / CHAR_BIT;
	if (set->__bits[byte] & (1 << bit)) {
		return 1;
	}
	return 0;
}
/*
POSIX(1)
*/
