#include <sys/utsname.h>

struct utsname {
	char sysname[100];
	char nodename[100];
	char release[100];
	char version[100];
	char machine[100];
};

/*
POSIX(1)
*/
