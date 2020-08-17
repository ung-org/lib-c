#include <sys/types.h>
#include <unistd.h>

long pathconf(const char *path, int name)
{
	(void)path; (void)name;
	return 0;
}
/*
POSIX(1)
*/
