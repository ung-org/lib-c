#include <sys/types.h>
#include <signal.h>
#include <string.h>
#include <limits.h>

int sigfillset(sigset_t * set)
{
	memset(set, UCHAR_MAX, sizeof(*set));
	return 0;
}
/*
POSIX(1)
*/
