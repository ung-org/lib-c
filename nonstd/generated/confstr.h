#ifdef _POSIX_SOURCE
#include <unistd.h>
#endif

static const char *confstr[] = {
	#ifdef _CS_PATH
	[_CS_PATH] = "/bin",
	#endif
	0
};
