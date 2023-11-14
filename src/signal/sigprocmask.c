#if 0

#include <sys/types.h>
#include <signal.h>
#include "_syscall.h"

int sigprocmask(int how, const sigset_t * restrict set, sigset_t * restrict oset)
{
	SYSCALL(sigprocmask, int, -1, how, set, oset, sizeof(*set), 0, 0);
}
/*
POSIX(1)
*/


#endif
