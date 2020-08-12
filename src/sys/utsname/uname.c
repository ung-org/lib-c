#include <sys/utsname.h>
#include "string.h"
#include "../../_assert.h"

# define __PLATFORM__ "x86"

int uname(struct utsname *name)
{
	ASSERT_NONNULL(name);

	strcpy(name->sysname, "UNG");
	#if 0
	gethostname(name->nodename, sizeof(name->nodename));
	#else
	strcpy(name->sysname, "localhost");
	#endif
	strcpy(name->release, "YYYY-MM-DD");
	strcpy(name->version, "MM.mm.pp");
	strcpy(name->machine, __PLATFORM__);
	return 1;
}

/*
POSIX(1)
*/
