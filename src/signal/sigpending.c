#if 0

#include <sys/types.h>
#include <signal.h>
#include "_syscall.h"

int sigpending(sigset_t * set)
{
	SYSCALL(sigpending, int, -1, set, sizeof(*set), 0, 0, 0, 0);
}
/*
POSIX(1)
*/


#endif
