#include <sys/types.h>
#include <unistd.h>

long sysconf(int name)
{
	return name;
}
/*
POSIX(1)
*/
